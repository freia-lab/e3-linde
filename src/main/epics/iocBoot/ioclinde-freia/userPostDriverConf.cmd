####################################################################
## User provided PLC or fast controller driver post configuration ##
####################################################################

## Set alarm levels
dbpf Cryo-Dwr:LHe:LI5200_Lt.LOLO 200.
dbpf Cryo-Dwr:LHe:LI5200_Lt.LLSV "MAJOR"

dbpf Cryo-Cmp:HP:PI2170.LLSV "MAJOR"
dbpf Cryo-Cmp:HP:PI2170.LOLO 5.5
