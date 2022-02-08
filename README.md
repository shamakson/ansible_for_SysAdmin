# Ansible for SysAdmin
*Author: *Eric Samakinwa* (This is a work in progress and will be updated ASAP)

## Ansible playbooks for day-to-day Linux SysAdmin activities
Ansible is a tool that will help you do your daily tasks easier and faster, so you can use your time in more effective ways, like learning new technology that matters. It's a great tool for sysadmins because it helps you achieve standardization and collaborate on daily activities, including:

1. Installing, configuring, and provisioning servers and applications
2. Updating and upgrading systems regularly
3. Monitoring, mitigating, and troubleshooting issue

# Ansible configuration hierarchy
Ansible configuration is applied on first-found, first-applied basis. 

To check the current location of ansible on your control node:
```bash
ansible --version | grep 'config file'
```
