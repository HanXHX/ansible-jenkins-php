Jenkins + PHP Ansible role
==========================

[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-HanXHX.jenkins--php-blue.svg)](https://galaxy.ansible.com/list#/roles/5418) [![Build Status](https://travis-ci.org/HanXHX/ansible-jenkins-php.svg)](https://travis-ci.org/HanXHX/ansible-jenkins-php)

Install and configure [Jenkins](https://jenkins-ci.org/) for PHP. This role is inspired by [jenkins-php.org](http://jenkins-php.org) project.

Requirements
------------

- This role only supports Debian Jessie. 
- When you play this role for the first time, the port 8080 must be available.

Role Variables
--------------

- `jenkins_dir`: directory where you download tools (cli) and updates
- `jenkins_listen`: jenkins listen (default is all ip)
- `jenkins_port`: jenkins port (default is 8080)
- `jenkins_extra_plugins`: add your needed plugins here
- `jenkins_force_install_plugins`: (boolean) force install plugins, could break idempotence
- `jenkins_auth_enabled`: (boolean) set to true to install plugins with login/pass. DO NOT SET TRUE BEFORE FIRST LAUNCH OR JENKINS WITH AUTHENTICATION DISABLED.
- `jenkins_ansible_user`
- `jenkins_ansible_password`
- `jenkins_jdk_package`: package used to install jdk (default is : 'openjdk-7-jdk'). If JDK is preconfigured, you can disable auto install by setting 'null'.

Dependencies
------------

None. But you can add your PHP role.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: HanXHX.jenkins-php }


License
-------

GPLv2

Author Information
------------------

- Twitter: https://twitter.com/hanxhx
