# File Shares and Drive Mapping

## Objective
Configure department file shares with group-based access and automatically map them through Group Policy.

## Shares Created
- \\DC01\IT
- \\DC01\HR
- \\DC01\Public

## Permissions
- IT_Admins received Modify access to the IT folder.
- HR_Users received Modify access to the HR folder.
- Domain Users received Modify access to the Public folder.
- Domain Admins retained Full Control.

## Testing
- John Smith could access IT and Public but was denied access to HR.
- Mary Johnson could access HR and Public but was denied access to IT.

## Group Policy
- Created the Department Drive Maps GPO.
- Used Group Policy Preferences to map department drives.
- Used item-level targeting based on security-group membership.

## What I Learned
- Share and NTFS permissions are separate permission layers.
- The most restrictive combined permission determines network access.
- Permissions should normally be assigned to groups rather than individual users.
- Group Policy Preferences can map drives according to group membership.
