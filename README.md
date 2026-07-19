# Enterprise-Infrastructure-Lab

## Project Goal
Build and document a Windows Server and Active Directory lab that simulates a small business environment.

## Environment
- VMware Workstation
- Windows Server 2025 Desktop Experience
- Server name: DC01
- Network mode: NAT
- Domain: corp.local

## Completed
- Installed Windows Server 2025
- Renamed server to DC01
- Configured a static IPv4 address
- Installed Active Directory Domain Services
- Promoted DC01 to a domain controller
- Created the corp.local forest
- Explored Active Directory Users and Computers
- Explored Active Directory Administrative Center
- Created organizational units
- Created users and security groups

## What I Learned
- Active Directory Users and Computers is the older, commonly used management console.
- Active Directory Administrative Center has a newer interface and exposes more detailed user attributes.
- User objects can contain information such as phone numbers and addresses.
- Active Directory includes containers such as LostAndFound.
- OUs organize users, computers, and groups and can later receive Group Policy settings.

## Next Steps
- Create a Windows client VM
- Join the client to corp.local
- Test domain user authentication
- Create and apply Group Policy
- Configure shared folders and permissions
- Automate user administration with PowerShell
