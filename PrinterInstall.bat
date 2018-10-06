REM Lunch printers in control
control /name Microsoft.DevicesAndPrinters

powershell Invoke-Command {Set-ExecutionPolicy Unrestricted -Force}
REM You can change path of powershell script file
powershell Invoke-Command {Start-Process powershell -verb runas \\url\AddPrinter.ps1}  