
require modbus,2.10.0
require iocStats,1856ef5

###
###
###>>
###>> Environmet Variables
###>>
epicsEnvSet("ENGINEER","")
epicsEnvSet("LOCATION","")

epicsEnvSet("TOP", "$(E3_CMD_TOP)/..")
epicsEnvSet("DB_TOP", "$(TOP)/template")
epicsEnvSet("CMD_TOP", "$(E3_CMD_TOP)")

epicsEnvSet("IOCSTATS_CMD_TOP", "$(TOP)/../e3-iocStats/cmds")
epicsEnvSet("AUTOSAVE_CMD_TOP", "$(TOP)/../e3-autosave/cmds")


epicsEnvSet(P, "Raritan")
epicsEnvSet(R, "EMX")
epicsEnvSet("IOC",  "$(P)-$(R)")
epicsEnvSet("IOCST", "$(IOC):IocStats")

epicsEnvSet("EMX1", "172.16.60.30")



iocshLoad("$(TOP)/iocsh/raritan_emx888.iocsh", "PORTNAME=EMX1,HOSTNAME=$(EMX1)")



iocInit()

dbl > "$(TOP)/$(IOC)_PVs.list"



