# -------------------------------------------------------------
# Subject: Add Printer Script 
# Description: All variables need to be changed for your needs
# -------------------------------------------------------------

## Variables
$strPrintPortBW = "\\print.domainname.ca\myPrint-BW"
$strPrintPortColour = "\\print.domainname.ca\myPrint-Colour"

## Add Printer Port (Optional)
# It is not necessary, but it depends on your work environment you may need to set the printer port first before install printer 
Add-PrinterPort -Name $strPrintPortBW
Add-PrinterPort -Name $strPrintPortColour

## Add Printer
# DriverName can be vary
# Most of case Universal works fine, but you should test pdf document. If it does not work well, use the PLC driver.
Add-Printer -Name "myPrint-BW" -DriverName "Lexmark Universal v2 XL" -PortName $strPrintPortBW
Add-printer -Name "myPrint-Colours" -DriverName "Dell Color Laser PCL6" -PortName $strPrintPortColour

## Set Default Printer
(Get-WmiObject -ComputerName . -Class Win32_Printer -Filter "Name='myPrint-BW'").SetDefaultPrinter()

