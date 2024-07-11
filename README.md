# ansible-basic
This repository contains basic ansible documentations and playbooks that can be used more or less for daily system management.

## Installation in Ubuntu
```
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
```

### Output for reference

```
$ sudo apt install software-properties-common
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
software-properties-common is already the newest version (0.99.22.9).
software-properties-common set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.

$ sudo add-apt-repository --yes --update ppa:ansible/ansible
Repository: 'deb https://ppa.launchpadcontent.net/ansible/ansible/ubuntu/ jammy main'
Description:
Ansible is a radically simple IT automation platform that makes your applications and systems easier to deploy. Avoid writing scripts or custom code to deploy and update your applications— automate in a language that approaches plain English, using SSH, with no agents to install on remote systems.

http://ansible.com/

If you face any issues while installing Ansible PPA, file an issue here:
https://github.com/ansible-community/ppa/issues
More info: https://launchpad.net/~ansible/+archive/ubuntu/ansible
Adding repository.
Adding deb entry to /etc/apt/sources.list.d/ansible-ubuntu-ansible-jammy.list
Adding disabled deb-src entry to /etc/apt/sources.list.d/ansible-ubuntu-ansible-jammy.list
Adding key to /etc/apt/trusted.gpg.d/ansible-ubuntu-ansible.gpg with fingerprint 6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://security.ubuntu.com/ubuntu jammy-security InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Get:4 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu jammy InRelease [18.0 kB]
Hit:5 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Get:6 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu jammy/main amd64 Packages [1112 B]
Get:7 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu jammy/main Translation-en [752 B]
Fetched 19.9 kB in 2s (9462 B/s)
Reading package lists... Done

$ sudo apt install ansible
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  ansible-core python-babel-localedata python3-babel python3-bcrypt python3-certifi python3-chardet python3-idna python3-jinja2 python3-jmespath python3-kerberos
  python3-markupsafe python3-nacl python3-ntlm-auth python3-packaging python3-paramiko python3-requests python3-requests-kerberos python3-requests-ntlm
  python3-resolvelib python3-tz python3-urllib3 python3-winrm python3-xmltodict sshpass
Suggested packages:
  python-jinja2-doc python-nacl-doc python3-gssapi python3-invoke python3-openssl python3-socks python-requests-doc
The following NEW packages will be installed:
  ansible ansible-core python-babel-localedata python3-babel python3-bcrypt python3-certifi python3-chardet python3-idna python3-jinja2 python3-jmespath
  python3-kerberos python3-markupsafe python3-nacl python3-ntlm-auth python3-packaging python3-paramiko python3-requests python3-requests-kerberos
  python3-requests-ntlm python3-resolvelib python3-tz python3-urllib3 python3-winrm python3-xmltodict sshpass
0 upgraded, 25 newly installed, 0 to remove and 2 not upgraded.
Need to get 24.0 MB of archives.
After this operation, 231 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y

$ ansible --version
ansible [core 2.16.8]
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/jj/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  ansible collection location = /home/jj/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/bin/ansible
  python version = 3.10.12 (main, Mar 22 2024, 16:50:05) [GCC 11.4.0] (/usr/bin/python3)
  jinja version = 3.0.3
  libyaml = True

```

Reference: https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu


