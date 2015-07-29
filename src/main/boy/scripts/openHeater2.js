importPackage(Packages.org.csstudio.opibuilder.scriptUtil);


mac=DataUtil.createMacrosInput(false);

mac.put("Heater2", widget.getPropertyValue("name"));

ScriptUtil.openOPI(widget, "../helper-opi-files/CstatH-Heater2.opi", 7, mac);