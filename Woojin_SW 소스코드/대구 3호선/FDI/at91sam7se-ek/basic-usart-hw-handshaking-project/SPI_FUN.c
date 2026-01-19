
//------------------------------------------------------------------------------
//         Headers
//------------------------------------------------------------------------------

#include <board.h>
#include <dbgu/dbgu.h>
#include <pio/pio.h>
#include <aic/aic.h>
#include <utility/assert.h>
#include <utility/trace.h>
#include <utility/math.h>
#include <memories/spi-flash/at26.h>

#include <string.h>

#include "SPI_FUN.h"


/// Maximum device page size in bytes.
#define MAXPAGESIZE     256

#if defined(BOARD_AT45_A_SPI_BASE)

/// Address of the SPI peripheral connected to the AT26.
#define SPI_BASE        BOARD_AT45_A_SPI_BASE
/// Peripheral identifier of the SPI connected to the AT26.
#define SPI_ID          BOARD_AT45_A_SPI_ID
/// Chip select value used to select the AT26 chip.
#define SPI_CS          BOARD_AT45_A_NPCS
/// SPI peripheral pins to configure to access the serial flash.
#define SPI_PINS        BOARD_AT45_A_SPI_PINS, BOARD_AT45_A_NPCS_PIN

#elif defined(AT91C_BASE_SPI0)

/// Address of the SPI peripheral connected to the AT26.
#define SPI_BASE        AT91C_BASE_SPI0
/// Peripheral identifier of the SPI connected to the AT26.
#define SPI_ID          AT91C_ID_SPI0
/// Chip select value used to select the AT26 chip.
#define SPI_CS          0
/// SPI peripheral pins to configure to access the serial flash.
#define SPI_PINS        PINS_SPI0, PIN_SPI0_NPCS0

#else

/// Address of the SPI peripheral connected to the AT26.
#define SPI_BASE        AT91C_BASE_SPI
/// Peripheral identifier of the SPI connected to the AT26.
#define SPI_ID          AT91C_ID_SPI
/// Chip select value used to select the AT26 chip.
#define SPI_CS          0
/// SPI peripheral pins to configure to access the serial flash.
#define SPI_PINS        PINS_SPI, PIN_SPI_NPCS0

#endif //#if defined(AT91C_BASE_SPI0)

//------------------------------------------------------------------------------
//         Internal functions
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
//         Internal variables
//------------------------------------------------------------------------------
/// SPI driver instance.
Spid spid;

/// Serial flash driver instance.
At26 at26;

Pin Spi_pins[] = {SPI_PINS};

//------------------------------------------------------------------------------
/// Interrupt service routine for the SPI peripheral. Forwards the interrupt
/// to the SPI driver.
//------------------------------------------------------------------------------
 void ISR_Spi(void)
{
    SPID_Handler(&spid);
}

//------------------------------------------------------------------------------
/// Reads and returns the status register of the serial flash.
/// \param pAt26  Pointer to an AT26 driver instance.
//------------------------------------------------------------------------------
unsigned char AT26_ReadStatus(At26 *pAt26)
{
    unsigned char error, status;

    SANITY_CHECK(pAt26);

    // Issue a status read command
    error = AT26_SendCommand(pAt26, AT26_READ_STATUS, 1, &status, 1, 0, 0, 0);
    //ASSERT(!error, "-F- AT26_GetStatus: Failed to issue command.\n\r");

    // Wait for transfer to finish
    while (AT26_IsBusy(pAt26));

    return status;
}

//------------------------------------------------------------------------------
/// Writes the given value in the status register of the serial flash device.
/// \param pAt26  Pointer to an AT26 driver instance.
/// \param status  Status to write.
//------------------------------------------------------------------------------
void AT26_WriteStatus(At26 *pAt26, unsigned char status)
{
    unsigned char error;

    SANITY_CHECK(pAt26);

    // Issue a write status command
    error = AT26_SendCommand(pAt26, AT26_WRITE_STATUS, 1, &status, 1, 0, 0, 0);
    ASSERT(!error, "-F- AT26_WriteStatus: Failed to issue command.\n\r");
    while (AT26_IsBusy(pAt26));
}

//------------------------------------------------------------------------------
/// Waits for the serial flash device to become ready to accept new commands.
/// \param pAt26  Pointer to an AT26 driver instance.
//------------------------------------------------------------------------------
void AT26_WaitReady(At26 *pAt26)
{
    unsigned char ready = 0;

    SANITY_CHECK(pAt26);

    // Read status register and check busy bit
    while (!ready) {

        ready = ((AT26_ReadStatus(pAt26) & AT26_STATUS_RDYBSY) == AT26_STATUS_RDYBSY_READY);
    }
}

//------------------------------------------------------------------------------
/// Reads and returns the serial flash device ID.
/// \param pAt26  Pointer to an AT26 driver instance.
//------------------------------------------------------------------------------
unsigned int AT26_ReadJedecId(At26 *pAt26)
{
    unsigned char error;
    unsigned int id = 0;

    SANITY_CHECK(pAt26);
 
    // Issue a read ID command
    error = AT26_SendCommand(pAt26, AT26_READ_JEDEC_ID, 1,
                             (unsigned char *) &id, 3, 0, 0, 0);
    ASSERT(!error, "-F- AT26_GetJedecId: Could not issue command.\n\r");

     // Wait for transfer to finish
    while (AT26_IsBusy(pAt26));

    return id;
}

//------------------------------------------------------------------------------
/// Enables critical writes operation on a serial flash device, such as sector
/// protection, status register, etc.
/// \para pAt26  Pointer to an AT26 driver instance.
//------------------------------------------------------------------------------
void AT26_EnableWrite(At26 *pAt26)
{
    unsigned char error;

    SANITY_CHECK(pAt26);

    // Issue a write enable command
    error = AT26_SendCommand(pAt26, AT26_WRITE_ENABLE, 1, 0, 0, 0, 0, 0);
    //ASSERT(!error, "-F- AT26_EnableWrite: Could not issue command.\n\r");

    // Wait for end of transfer
    while (AT26_IsBusy(pAt26));
}

//------------------------------------------------------------------------------
/// Unprotects the contents of the serial flash device.
/// Returns 0 if the device has been unprotected; otherwise returns
/// SF_PROTECTED.
/// \param pAt26  Pointer to an AT26 driver instance.
//------------------------------------------------------------------------------
unsigned char AT26_Unprotect(At26 *pAt26)
{
    unsigned char status;

    SANITY_CHECK(pAt26);

    // Get the status register value to check the current protection
    status = AT26_ReadStatus(pAt26);
    if ((status & AT26_STATUS_SWP) == AT26_STATUS_SWP_PROTNONE) {

        // Protection already disabled
        return 0;
    }
    
    // Check if sector protection registers are locked
    if ((status & AT26_STATUS_SPRL) == AT26_STATUS_SPRL_LOCKED) {

        // Unprotect sector protection registers by writing the status reg.
        AT26_EnableWrite(pAt26);
        AT26_WriteStatus(pAt26, 0);
    }
    
    // Perform a global unprotect command
      AT26_EnableWrite(pAt26);
    AT26_WriteStatus(pAt26, 0);
    
    // Check the new status
    if ((status & (AT26_STATUS_SPRL | AT26_STATUS_SWP)) != 0) {

        return AT26_ERROR_PROTECTED;
    }
    else {

        return 0;
    }
}

//------------------------------------------------------------------------------
/// Erases all the content of the memory chip.
/// \param pAt26  Pointer to an AT26 driver instance.
//------------------------------------------------------------------------------
unsigned char AT26_EraseChip(At26 *pAt26)
{
    unsigned char status;
    unsigned char error;

    SANITY_CHECK(pAt26);

    // Check that the flash is ready an unprotected
    status = AT26_ReadStatus(pAt26);
    if ((status & AT26_STATUS_SWP) != AT26_STATUS_SWP_PROTNONE) {

        TRACE_WARNING("AT26_EraseBlock: Device is protected.\n\r");
        return AT26_ERROR_PROTECTED;
    }
    
    // Enable critical write operation
      AT26_EnableWrite(pAt26);
    
    // Erase the chip
    error = AT26_SendCommand(pAt26, AT26_CHIP_ERASE_2, 1, 0, 0, 0, 0, 0);
    ASSERT(!error, "-F- AT26_ChipErase: Could not issue command.\n\r");
     while (AT26_IsBusy(pAt26));    
    AT26_WaitReady(pAt26);

    return 0;
}

//------------------------------------------------------------------------------
/// Erases the specified 4KB block of the serial firmware dataflash.
/// Returns 0 if successful; otherwise returns AT26_ERROR_PROTECTED if the
/// device is protected or AT26_ERROR_BUSY if it is busy executing a command.
/// \param pAt26  Pointer to an AT26 driver instance.
/// \param address  Address of the block to erase.
//------------------------------------------------------------------------------
unsigned char AT26_EraseBlock(At26 *pAt26, unsigned int address)
{
    unsigned char status;
    unsigned char error;

    SANITY_CHECK(pAt26);
 
    // Check that the flash is ready an unprotected
    status = AT26_ReadStatus(pAt26);
    if ((status & AT26_STATUS_RDYBSY) != AT26_STATUS_RDYBSY_BUSY) {

        TRACE_WARNING("AT26_EraseBlock: Device is not ready.\n\r");
        return AT26_ERROR_BUSY;
    }
    else if ((status & AT26_STATUS_SWP) != AT26_STATUS_SWP_PROTNONE) {

        TRACE_WARNING("AT26_EraseBlock: Device is protected.\n\r");
        return AT26_ERROR_PROTECTED;
    }

    // Enable critical write operation
      AT26_EnableWrite(pAt26);

    // Start the block erase command
    error = AT26_SendCommand(pAt26, AT26_BLOCK_ERASE_4K, 4, 0, 0, address, 0, 0);
    ASSERT(!error, "-F- AT26_EraseBlock: Could not issue command.\n\r");
    while (AT26_IsBusy(pAt26));
    AT26_WaitReady(pAt26);

    return 0;
}

//------------------------------------------------------------------------------
/// Writes data at the specified address on the serial firmware dataflash. The
/// page(s) to program must have been erased prior to writing. This function
/// handles page boundary crossing automatically.
/// Returns 0 if successful; otherwise, returns AT26_ERROR_PROGRAM is there has
/// been an error during the data programming.
/// \param pAt26  Pointer to an AT26 driver instance.
/// \param pData  Data buffer.
/// \param size  Number of bytes in buffer.
/// \param address  Write address.
//------------------------------------------------------------------------------

unsigned char AT26_Write(
    At26 *pAt26,
    unsigned char *pData,
    unsigned int size,
    unsigned int address)
{
    unsigned int pageSize;
    unsigned int writeSize;
    unsigned char error;
    unsigned char status;

    SANITY_CHECK(pAt26);
    SANITY_CHECK(pData);

    // Retrieve device page size
    pageSize = AT26_PageSize(&at26);

    // Program one page after the other
    while (size > 0) {

        // Compute number of bytes to program in page
        writeSize = min(size, pageSize - (address % pageSize));
                
        // Enable critical write operation
        //AT26_EnableWrite(pAt26);
     
        
         // Program page
        //error = AT26_SendCommand(pAt26, AT26_BYTE_PAGE_PROGRAM, 1,pData, writeSize, address, 0, 0);
        
         error = AT26_SendCommand(pAt26, AT26_BYTE_PAGE_PROGRAM, 1,pData, writeSize, address, 0, 0);
        
        //ASSERT(!error, "-F- AT26_WritePage: Failed to issue command.\n\r");
          
       //while (AT26_IsBusy(pAt26));
       //AT26_WaitReady(pAt26);
         
        // Make sure that write was without error
        
        /*
        status = AT26_ReadStatus(pAt26);
        
        if ((status & AT26_STATUS_EPE) == AT26_STATUS_EPE_ERROR) {

            return AT26_ERROR_PROGRAM;
        }
        */
         
        size -= writeSize;
        address += writeSize;
    }

    return 0;
}

//------------------------------------------------------------------------------
/// Reads data from the specified address on the serial flash.
/// \param pAt26  Pointer to an AT26 driver instance.
/// \param pData  Data buffer.
/// \param size  Number of bytes to read.
/// \param address  Read address.
//------------------------------------------------------------------------------
void AT26_Read(
    At26 *pAt26,
    unsigned char *pData,
    unsigned int size,
    unsigned int address)
{
    unsigned char error;
    
     // Start a read operation
      error = AT26_SendCommand(pAt26, AT26_READ_ARRAY_LF, 4, pData, size, address, 0, 0);
    ASSERT(!error, "-F- AT26_Read: Could not issue command.\n\r");
    while (AT26_IsBusy(pAt26));
}


//------------------------------------------------------------------------------
//
//
//------------------------------------------------------------------------------
void SPI_Init(void)
{
       // Initialize the SPI and serial flash
  
    PIO_Configure(Spi_pins, PIO_LISTSIZE(Spi_pins));
    
    AIC_DisableIT(SPI_ID);
    
    AIC_ConfigureIT(SPI_ID, AT91C_AIC_PRIOR_LOWEST, ISR_Spi); 
    
    SPID_Configure(&spid, SPI_BASE, SPI_ID);
    
    AT26_Configure(&at26, &spid, SPI_CS);
    
    AIC_EnableIT(SPI_ID);            
   
    printf("SPI and AT26 drivers initialized\n\r");
}

