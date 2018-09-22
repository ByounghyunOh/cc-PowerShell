# -----------------------------------------------------
# Subject : Installed software checking script
# Description : Mainly uses to get exact software name for the uninstalling software
# -----------------------------------------------------

Get-WmiObject -Class Win32_Product | Where-Object { $_.Name }