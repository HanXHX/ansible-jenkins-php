Jenkins + PHP Ansible role
==========================

Install and configure [Jenkins](https://jenkins-ci.org/) for PHP. This role is inspired by [jenkins-php.org](http://jenkins-php.org) project.

Requirements
------------

- This role only supports Debian Jessie. 
- The port 8080 must be available.

Role Variables
--------------

- `jenkins_dir`: directory where you download tools (cli) and updates

Dependencies
------------

None. But you can add your PHP role.


Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: HanXHX.jenkins-php }


Known issues (PR welcomed!)
---------------------------

- No configuration for Jenkins (IP, port, etc)
- Sometimes (first launch), you can have an error while getting cli tools (port 8080 opened but jenkins not fully running). Relaunch this role, it will fix it.

License
-------

GPLv2

Author Information
------------------

- Twitter: https://twitter.com/hanxhx
