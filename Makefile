EXCLUDE_VERSIONS = 3.14
EXCLUDE_ARCHS += eldk

include ${EPICS_ENV_PATH}/module.Makefile
#EPICSVERSION = 3.14.15.2
#EPICS_VERSION = 3.14.15.2

PROJECT = ioc_linde_freia

#SOURCES = -none-
#STARTUPS = $(wildcard src/main/ioc/*.cmd)

OPIS= boy
