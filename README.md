# Ansible for Linux SysAdmin/Engineer
*Author:* *Eric Samakinwa* 
> This is a work in progress and will be updated 

### Why Ansible?
* Easy control over multiple nodes (Automation)

* Agentless: 

### Ansible playbooks for day-to-day Linux SysAdmin activities
Ansible is a configuration management tool that will help you do your daily tasks easier and faster. It's a great tool for system administrators as it helps them to achieve standardization and collaborate on daily activities, including:

1. Installing, configuring, and provisioning servers and applications
2. Updating and upgrading systems regularly
3. Monitoring, mitigating, and troubleshooting issue

### Ansible configuration file hierarchy
Ansible configuration is applied on a first-found, first-applied basis. The hierarchical structure of ansible configuration provides options to create a different configuration for individual projects, depending on the requirements of such project. To check the current location of ansible on your control node: 
```bash
ansible --version | grep 'config file'
```
The configuration file will be searched for in the following order: 

1. *ANSIBLE_CONFIG: The first place ansible will check for its configuration file is in the environment variable called the ANSIBLE_CONFIG. If this is specified, ansible will ignore any other configuration file and use it.*

2. *ansible.cfg: If 'ansible.cfg' exists in the current working directory, and ANSIBLE_CONFIG is not specified, then Ansible will use ansible.cfg as the configuration file.*

3. *~/.ansible.cfg: If non of the previous two options exist, ansible will check the current user's home directory for a file named .ansible.cfg (. means it's hidden). If this exists, it will be used as the active configuration file.*

4. */etc/ansible/ansible.cfg: This is the default file to be used when no other configuration file is present in any of the locations mentioned above.*

It is important to note that since Red Hat bought Ansible, the configuration file is missing after installing on the latest version of ubuntu *(20.04 LTS focal)*. However, you can find this file directly from the official website or documentation of ansible (Here: https://docs.ansible.com/).

### Getting the most out of Ansible configuration file
There are some commands that could helps us get started with ansible configuration.

* Print the current configuration file content;
```bash
ansible-config view
```
* Get full details of effective settings that are set, and the default where an option is not set; 
```bash
ansible-config dump 
```
   * These can be further explored using the following options:
```bash
    ansible-config dump | head # Displays the current effective setting  
```

```bash
    ansible-config dump --only-changed # Displays setting changed from default
```
* Show settings that can be made, either through variables or directives in the configuration file or playbook.
```bash
ansible-config list
```
* To display all possible categories in the configuration file;
```bash
grep -E '^\[.*\]' /etc/ansible/ansible.cfg # let's assume it is in the default location
```
* Display a parameter in the configuration file, followed by characters in a specific number of lines after it. This is useful in building a project specific inventory.
```bash
ansible-config list | grep -A5  COVERAGE_REMOTE_PATHS # Displays 5 lines after COVERAGE_REMOTE_PATHS in the config file
```

---
> Reference: Ansible Automation for the Red Hat Enterprise Linux 8 Exam (EX294) book by Andrew Mallet. 
---


