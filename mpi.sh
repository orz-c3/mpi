#mpi_ascii.sh
#!/bin/sh
#PBS -N mpi 
#PBS -l nodes=master_vir1
pssh -h $PBS_NODEFILE mkdir -p /home/s2212294/mpi 1>&2 
scp master:/home/s2212294/mpi/test /home/s2212294/mpi 
pscp -h $PBS_NODEFILE /home/s2212294/mpi/test /home/s2212294/mpi 1>&2

mpiexec -np 4 -machinefile $PBS_NODEFILE /home/s2212294/mpi/test
