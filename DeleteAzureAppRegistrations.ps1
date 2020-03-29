<# 
This short script will delete all App Registrations in a subscription. 
Use this if you need to clean out your Azure Active Directories app registrations.

.NOTES
  Version:        1.0
  Author:         Steve Buchanan (buchatech.com)
  Creation Date:  3-29-2020
#>

# Place your app registrations in a variable. 
$AppRegOIds = (Get-AzADApplication).ObjectId

# Loop through the app registrations to remove them. You will be prompted with confirmation to remove each one.
For ($i=0; $i -lt $AppRegOIds.Length; $i++) 
  {
   Remove-AzADApplication -objectid $AppRegOIds[$i]
  }
