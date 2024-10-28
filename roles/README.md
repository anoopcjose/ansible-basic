## Overview

An Ansible® Role is a self-contained, portable unit of Ansible automation that serves as the preferred method for grouping related tasks and associated variables, files, handlers, and other assets in a known file structure. 
While automation tasks can be written exclusively in an Ansible Playbook, Ansible Roles allow you to create bundles of automation content that can be run in 1 or more plays, reused across playbooks, and shared with other users in collections.

## How do Ansible Roles work?

Ansible Roles are expressed in YAML—a human-readable data serialization language used to write configuration files. 
When a role is included in a task or a play, Ansible looks for a main.yml file in at least 1 of 8 standard role directories. These directories—depicted below with explanatory comments—include role tasks, handlers, modules, defaults, variables, files, templates, and meta.

```
$ ansible-galaxy init ~/roles/apache 
- Role /home/electrifex/roles/apache was created successfully
```

```
~/roles$ tree apache/
apache/
├── README.md
├── defaults
│   └── main.yml      #  <-- default lower priority variables for this role
├── files             #  <-- files for use with the copy resource
├── handlers
│   └── main.yml      #  <-- handlers file
├── meta
│   └── main.yml      #  <-- role dependencies
├── tasks
│   └── main.yml      #  <-- tasks file can include smaller files if warranted
├── templates         #  <-- files for use with the template resource
├── tests
│   ├── inventory
│   └── test.yml
└── vars
    └── main.yml      #  <-- variables associated with this role

9 directories, 8 files
```


    tasks/main.yml - A list of tasks that the role provides to the play for execution.

    handlers/main.yml - handlers that are imported into the parent play for use by the role or other roles and tasks in the play.

    defaults/main.yml - very low precedence values for variables provided by the role (see Using Variables for more information). A role’s own defaults will take priority over other role’s defaults, but any/all other variable sources will override this.

    vars/main.yml - high precedence variables provided by the role to the play (see Using Variables for more information).

    files/stuff.txt - one or more files that are available for the role and it’s children.

    templates/something.j2 - templates to use in the role or child roles.

    meta/main.yml - metadata for the role, including role dependencies and optional Galaxy metadata such as platforms supported. This is required for uploading into galaxy as a standalone role, but not for using the role in your play.


You can use an Ansible Role by calling it in a playbook, either by listing it with the roles option or adding it in the role tasks section with the include_role or import_role commands. 
Roles listed with the roles option or added with import_role are run before any other tasks in a play, while roles added with include_role run in the order in which they are defined within the task list.

https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_reuse_roles.html


