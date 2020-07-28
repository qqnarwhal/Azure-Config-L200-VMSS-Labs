# Azure-Config-L200-VMSS-Labs

## Failed State Labs

### Lab1
Review case <caseID> in ASC
Investigate the cause for the below VMSS in failed state and provide potential solutions.

Resource Group: L200FailedScenarios

VMSS: failedLab1

### Lab2
Review case <caseID> in ASC
Investigate the cause for the below VMSS in failed state and provide potential solutions. 

Resource Group: L200FailedScenarios

VMSS: failedLab2

### Lab3
Click below to deploy the lab. 
The deployment will fail with error "The resource operation completed withterminal provisioning state 'Failed'". 
However, you can still find the VMSS under resources. 
It will just be in failed state. 

The goal of this lab is to fix the failed state of the deployed VMSS without modifying the template or redeploying the VMSS and ensure the VMSS has 3 running instances. 
(Scale up/down, upgrade, or delete instances are okay)

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fqqnarwhal%2FAzure-Config-L200-VMSS-Labs%2Fmaster%2Ffailedlab3.json) (Right click to open in new tab)

## Upgrade Policy Lab
1. Create a 2 instance VMSS with Manual upgrade policy. You can do it from portal or use this [PowerShell script](https://github.com/qqnarwhal/Azure-Config-L200-VMSS-Labs/blob/master/buildManualVmss.ps1)
2. Once the VMSS is created, try configuring the upgrade policy to "rolling"
3. For the lab to be considered as completed, all instances must be in "healthy" health state.

## VMSS RDP Lab
This lab will deploy a basic VMSS with a new VNET, LB, and other required networking resources. Users won't be able to RDP to the VMSS upon deployment. The goal is to identify and fix the issue so that users are able to RDP to the VMSS using the LB PIP.

Hint: There are 2 things that need to be fixed!

Note: The "Region" parameter doesn't really do anything. Use the "location" parameter to set the location for your resources. 

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fqqnarwhal%2FAzure-Config-L200-VMSS-Labs%2Fmaster%2FrdpLab1.json) (Right click to open in new tab)
