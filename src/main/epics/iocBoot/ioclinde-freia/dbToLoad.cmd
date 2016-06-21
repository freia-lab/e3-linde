#############################################
## DB loading                              ##
#############################################

cd "$(TOP)/db"
#dbLoadRecords("xxx.db","user=konradHost")
#dbLoadTemplate(xxx.substitutions)

### Linde Cryo system
dbLoadRecords("linde.db")
dbLoadTemplate("lindeCryosystem.substitutions")

# PLC communication 
#cd "$(EPICS_MODULES)/s7plc/db"
#dbLoadRecords("s7plccom.db", "CBS1=XXXX, CBS2=XXXX, CTRLTYPE=P, IDX=XX, IOCTYPE=XXXX, FOOTER_OFFSET=XXXX")
#dbLoadRecords("s7plccmdcom.db", "CBS1=XXXX, CBS2=XXXX, CTRLTYPE=P, IDX=XX, IOCTYPE=XXXX, FOOTER_OFFSET=XXXX")

# IOC monitor
cd "$(EPICS_MODULES)/iocmon/db"
# The macro CTRLTYPE identifies the controller; P for (PLC), H for PSH and F for PCF and S for SERVER
# The macro IDX is the controller's index
# The macro IOCTYPE is IOCtype; CORE, SYSM, PLC
# Uncomment below statement if iocmon feature is required and substitue XXXX with proper values
#dbLoadRecords("iocmon.db","CBS1=XXXX, CBS2=XXXX, CTRLTYPE=X, IDX=X, IOCTYPE=XXXX")