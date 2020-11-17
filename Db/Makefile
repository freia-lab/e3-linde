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

DB += linde.db
DB += mbbi.template
DB += lindeBinaryOutput.template
DB += lindeBinaryInput.template
DB += lindeString.template  
DB += visu_state.template 
DB += lindeAnalogFloatInput.template  
DB += lindeAnalogIntInput.template
DB += lindeCryosystem.substitutions

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
