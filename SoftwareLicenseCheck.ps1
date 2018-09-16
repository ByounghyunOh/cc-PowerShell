# -------------------------------------------------------------
# Subject: Checking installed software status Script 
# Description: Used for check windows office and windows license status
# -------------------------------------------------------------

Get-CimInstance -ClassName SoftwareLicensingProduct |
    Where PartialProductKey |
    Select Name, Description, LicenseStatus|
    Format-List *