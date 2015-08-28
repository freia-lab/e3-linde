TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install)
# databases, templates, substitutions like this

DB += General.db
DB += AI.template
DB += AValves.template
DB += DI.template
DB += Evalves.template
DB += SQ0_1_2.template
#DB += SQ13.db
DB += SQanalog.template
DB += SQbinary.template
DB += SQbinPar.template
DB += Heater1.template
DB += Heater2.template
DB += PID.template
DB += Valves.template
DB += hnoss.substitutions
DB += linde.db
DB += mbbi.template
DB += lindeBinaryOutput.template
DB += lindeBinaryInput.template
DB += lindeString.template  
DB += visu_state.template 
DB += lindeAnalogFloatInput.template  
DB += lindeAnalogIntInput.template
DB += lindeCryosystem.substitutions
DB += 2Kpumps.substitutions
DB += 2Kpumps.db
DB += 2K_AI.template
DB += 2K_DVpump.template
DB += 2K_WHpump.template
DB += CtrlBitwRdBack.template

DB += Dwater.db
DB += Dwtr_AI.template
DB += Dwtr_AIx4.template
DB += Dwater.substitutions
DB += CtrlMbbwRdBack.template
DB += TP_AI.template
DB += vac.substitutions
DB += vac.db
DB += ArcDet.template
DB += ArcDet.substitutions
DB += Interlock.template
DB += Interlock.substitutions

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
