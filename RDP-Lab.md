# VMSS-RDP-Lab

This lab will deploy a basic VMSS with a new VNET, LB, and other required networking resources. 
Users won't be able to RDP to the VMSS upon deployment. 
The goal is to identify and fix the issue so that users are able to RDP to the VMSS using the LB PIP.

Hint: There are 2 things that need to be fixed!

**Note: The "Region" parameter doesn't really do anything. Use the "location" parameter to set the location for your resources.**

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fqqnarwhal%2FAzure-Config-L200-VMSS-Labs%2Fmaster%2FvmssLab1.json)

Don't forget to delete the resources after completing the lab!
