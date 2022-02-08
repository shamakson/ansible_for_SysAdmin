# Ansible for Linux SysAdmin/Engineer
*Author:* *Eric Samakinwa* (This is a work in progress and will be updated ASAP)

## Ansible playbooks for day-to-day Linux SysAdmin activities
Ansible is a configuration management tool that will help you do your daily tasks easier and faster. It's a great tool for system administrators as it helps them to achieve standardization and collaborate on daily activities, including:

1. Installing, configuring, and provisioning servers and applications
2. Updating and upgrading systems regularly
3. Monitoring, mitigating, and troubleshooting issue

## Ansible configuration file hierarchy
Ansible configuration is applied on a first-found, first-applied basis. The hierarchical structure of ansible configuration provides options to create a different configuration for individual projects, depending on the requirements of such project. To check the current location of ansible on your control node:

```bash
ansible --version | grep 'config file'
```
The configuration file will be searched for in the following order:
*ANSIBLE_CONFIG: The first place ansible will check for its configuration file is in the environment variable called the ANSIBLE_CONFIG. If this is specified, ansible will ignore any other configuration file and use it.*

*ansible.cfg: If 'ansible.cfg' exists in the current working directory, and ANSIBLE_CONFIG is not specified, then Ansible will use ansible.cfg as the configuration file.*

*~/.ansible.cfg: If non of the previous two options exist, ansible will check the current user's home directory for a file named .ansible.cfg (. means it's hidden). If this exists, it will be used as the active configuration file.*

*/etc/ansible/ansible.cfg: This is the default file to be used when no other configuration file is present in any of the locations mentioned above.*

It is important to note that since Red Hat bought Ansible, the configuration file is missing after installing on the latest version of ubuntu (20.04 LTS focal). However, you can find this file directly from the official website or documentation of ansible (Here: https://docs.ansible.com/).
 
