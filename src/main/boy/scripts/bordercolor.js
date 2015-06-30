importPackage(Packages.org.csstudio.opibuilder.scriptUtil);

var pv0 = PVUtil.getDouble(pvs[0]); //sAuto

if(pv0==0)
    widget.setPropertyValue("border_style",1);
else
	widget.setPropertyValue("border_style",0);
	
if(pv0==0)
    widget.setPropertyValue("border_color","Minor");
else
	widget.setPropertyValue("border_color","IO border");