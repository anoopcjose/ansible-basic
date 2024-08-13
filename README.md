# ansible-basic
This repository contains basic ansible documentations and playbooks that can be used more or less for daily system management.

## Installation in Ubuntu
```
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
$ ansible --version
$ sudo apt install python3-pip  {{ if pip is not installed }} 
$ pip3 install ansible-lint
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

$ sudo apt install python3-pip  {{ if pip is not installed }} 

$ pip3 install ansible-lint

Successfully installed ansible-compat-24.7.0 ansible-lint-24.7.0 attrs-24.1.0 black-24.8.0 bracex-2.5 click-8.1.7 filelock-3.15.4 jsonschema-4.23.0 jsonschema-specifications-2023.12.1 markdown-it-py-3.0.0 mdurl-0.1.2 mypy-extensions-1.0.0 packaging-24.1 pathspec-0.12.1 platformdirs-4.2.2 pygments-2.18.0 referencing-0.35.1 rich-13.7.1 rpds-py-0.19.1 ruamel.yaml-0.18.6 ruamel.yaml.clib-0.2.8 subprocess-tee-0.4.2 tomli-2.0.1 typing-extensions-4.12.2 wcmatch-9.0 yamllint-1.35.1
```

#### Error / Warning

```
  WARNING: The script pygmentize is installed in '/home/ubuntu/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
```

```
$ echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

$ source ~/.bashrc 

$ echo $PATH
/home/ubuntu/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
```

Reference: 

[1.] https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu
[2.] https://ansible.readthedocs.io/projects/lint/installing/#installing-the-latest-version


