# Group Policy

## Objective
Learn how to create, link, and troubleshoot Group Policy Objects.

## Tasks Completed
- Created a Group Policy Object
- Linked the GPO to an Organizational Unit
- Applied a User Configuration policy
- Used `gpupdate /force`
- Used `gpresult /r` to verify policy application

## Issue Encountered
The policy did not apply because it was linked to the Workstations OU while the user account was located in the IT OU.

## Resolution
Linked the GPO to the IT OU, refreshed Group Policy, and verified successful application.

## Key Takeaways
- User Configuration follows the user object.
- Computer Configuration follows the computer object.
- `gpresult /r` is useful for troubleshooting Group Policy.
