# Day 6 - Active Directory Automation with PowerShell

## Objective

Learn how to automate Active Directory administration using PowerShell instead of manually creating users through Active Directory Users and Computers.

---

## Environment

- Windows Server 2025
- Active Directory Domain Services
- Domain: corp.local
- PowerShell 5.1
- ActiveDirectory Module

---

## Tasks Completed

- Imported the ActiveDirectory PowerShell module.
- Retrieved the domain's Distinguished Name dynamically.
- Created a reusable PowerShell script for provisioning users.
- Prompted securely for a temporary password.
- Automatically created an Active Directory user.
- Added the user to the appropriate security group.
- Checked for duplicate usernames before creating accounts.
- Implemented try/catch error handling.
- Verified successful account creation.

---

## Technologies Used

- PowerShell
- Active Directory
- Windows Server 2025
- AD PowerShell Module

---

## Commands Learned

```powershell
Get-ADDomain
Get-ADUser
New-ADUser
Add-ADGroupMember
Read-Host -AsSecureString