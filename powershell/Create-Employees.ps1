#Requires -Version 5.1
#Requires -Modules ActiveDirectory

<#
.SYNOPSIS
Create New Active Directory User

.DESCRIPTION
Creates AD User in a Reusable way.
#>

[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$FirstName = "Alex"
$LastName = "Carter"
$Username = "acarter"
$DepartmentOU = "IT"
$GroupName = "IT_Admins"

$DomainDN = (Get-ADDomain).DistinguishedName
$UserOU = "OU=$DepartmentOU, $DomainDN"

$Password = Read-Host "Enter Temp Password" -AsSecureString

if(Get-ADUser -Filter "SamAccountName -eq '$Username'" -ErrorAction SilentlyContinue) {
	Write-Warning "The user $Username already exists."
}
else{
	try { 
	New-ADUser `
	-Name "$FirstName $LastName" `
	-GivenName $FirstName `
	-Surname $LastName `
	-SamAccountName $Username `
	-UserPrincipalName "$Username@corp.local" `
	-Path $UserOU `
	-AccountPassword $Password `
	-Enabled $true `
	-ChangePasswordAtLogon $true
	
	Add-ADGroupMember `
	-Identity $GroupName `
	-Members $Username

	Write-Host "Sucessfully created $Username and added the account to $GroupName."
	}
	catch {
	Write-Error "Unable to create user: $($_.Exception.Message)"
	} 
}