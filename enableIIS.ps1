# This script will install CSE that enables IIS Web Server Role and hosts a simple webpage on an existing VMSS.  
# The script does not create or modify NSG rules. An NSG rule will need to be added for port 80 for the web page to be accessible from internet.
# Ref: https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/quick-create-powershell

# Define the variables
$RG = "MyRG" # Need existing RG
$vmssName = "MyVmss"

# Define the script for your Custom Script Extension to run
$publicSettings = @{
    "fileUris" = (,"https://raw.githubusercontent.com/Azure-Samples/compute-automation-configurations/master/automate-iis.ps1");
    "commandToExecute" = "powershell -ExecutionPolicy Unrestricted -File automate-iis.ps1"
}

# Get information about the scale set
$vmss = Get-AzVmss `
  -ResourceGroupName $RG `
  -VMScaleSetName $vmssName

# Use Custom Script Extension to install IIS and configure basic website
Add-AzVmssExtension -VirtualMachineScaleSet $vmss `
  -Name "customScript" `
  -Publisher "Microsoft.Compute" `
  -Type "CustomScriptExtension" `
  -TypeHandlerVersion 1.8 `
  -Setting $publicSettings

# Update the scale set and apply the Custom Script Extension to the VM instances
Update-AzVmss `
  -ResourceGroupName $RG `
  -Name $vmssName `
  -VirtualMachineScaleSet $vmss

