# -----------------------------------------------------
# Subject : Uninstall software script
# Description : Mainly uses for uninstalling software
# -----------------------------------------------------

# First you need to know the software name, you can use InstalledSoftwareCheck.ps1
$name = "software name"   # Software name

$app = Get-WmiObject -Class Win32_Product | Where-Object { 
    $_.Name -match $name 
}
$app.Uninstall()