echo y | PLINK.EXE -pw scc -ssh root@192.168.90.11 ls
PSCP.EXE  -pw scc -scp ./tciu_root.ptu root@192.168.90.11:/
PLINK.EXE -pw scc -ssh root@192.168.90.11 /bin/tar xvzf /tciu_root.ptu -C /root/
PLINK.EXE -pw scc -ssh root@192.168.90.11 sync
