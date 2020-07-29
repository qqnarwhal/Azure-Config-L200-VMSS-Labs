#Lab - VMSS in Failed State

## Lab1
Browse to case <caseID> in ASC
Investigate the cause for the below VMSS in failed state and provide potential solutions.

Resource Group: L200FailedScenarios

VMSS: failedLab1

## Lab2
Browse to case <caseID> in ASC
Investigate the cause for the below VMSS in failed state and provide potential solutions. 

Resource Group: L200FailedScenarios

VMSS: failedLab2

## Lab3
Click below to deploy the lab. 
The deployment will fail with error "The resource operation completed withterminal provisioning state 'Failed'". 
However, you can still find the VMSS under resources. 
It will just be in failed state. 

The goal of this lab is to fix the failed state of the deployed VMSS without modifying the template or redeploying the VMSS and ensure the VMSS has 3 running instances. 
(Scale up/down, upgrade, or delete instances are okay)

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fqqnarwhal%2FAzure-Config-L200-VMSS-Labs%2Fmaster%2Ffailedlab3.json) (Right click to open in new tab)
