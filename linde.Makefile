# Copyright (C) 2022  FREIA Laboratory

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


# The following lines are required
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
include $(E3_REQUIRE_TOOLS)/driver.makefile

# Most modules only need to be built for x86_64
ARCH_FILTER += linux-x86_64

# Since this file (linde.Makefile) is copied into
# the module directory at build-time, these paths have to be relative
# to that path
APP := .
APPDB := $(APP)/Db
APPSRC := $(APP)/src

# If you have files to include, you will generally want to include these, e.g.
#
#     SOURCES += $(APPSRC)/lindeMain.cpp
#     SOURCES += $(APPSRC)/library.c
#     HEADERS += $(APPSRC)/library.h
#     USR_INCLUDES += -I$(where_am_I)$(APPSRC)

SOURCES += $(APPSRC)/DwrValveCtrl.st

TEMPLATES += $(wildcard $(APPDB)/*.db)
TEMPLATES += $(wildcard $(APPDB)/*.proto)
#TEMPLATES += $(wildcard $(APPDB)/*.template)

DBDS += $(wildcard $(APPSRC)/*.dbd)

SCRIPTS += $(wildcard ../iocsh/*.iocsh)

# Same as with any source or header files, you can also use $SUBS and $TMPS to define
# database files to be inflated (using MSI), e.g.
#
#SUBS = $(wildcard $(APPDB)/*.substitutions)
#TMPS = $(wildcard $(APPDB)/*.template)

SUBS = $(wildcard $(APPDB)/*.substitutions)

USR_DBFLAGS += -I . -I ..
USR_DBFLAGS += -I $(EPICS_BASE)/db
USR_DBFLAGS += -I $(APPDB)
USR_DBFLAGS += -I $(E3_SITEMODS_PATH)/s7nodave/$(S7NODAVE_DEP_VERSION)/db

.PHONY: vlibs
vlibs:
