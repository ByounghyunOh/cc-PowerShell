# -------------------------------------------------------------
# Subject: Checking installed licensing software status Script 
# Description: Mainly uses for check windows office and windows license status
# -------------------------------------------------------------

Get-CimInstance -ClassName SoftwareLicensingProduct |
    Where PartialProductKey |
    Select Name, Description, LicenseStatus|
    Format-List *