Jenkins + PHP Ansible role
==========================

[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-HanXHX.jenkins--php-blue.svg)](https://galaxy.ansible.com/list#/roles/5577) [![Build Status](https://travis-ci.org/HanXHX/ansible-jenkins-php.svg)](https://travis-ci.org/HanXHX/ansible-jenkins-php)

Install and configure [Jenkins](https://jenkins-ci.org/) for PHP. This role is inspired by [jenkins-php.org](http://jenkins-php.org) project.

Requirements
------------

- This role only supports Debian Jessie/Stretch. It could work on recent Ubuntu versions.
- When you play this role for the first time. You must *NOT* edit `jenkins_admin_username` and `jenkins_admin_password`. It uses auto-genetated password to install plugins and jobs.

Role Variables
--------------

- `jenkins_listen`: jenkins listen (default is all ip)
- `jenkins_http_port`: jenkins port (default is 8080)
- `jenkins_extra_plugins`: add your needed plugins here
- `jenkins_ansible_user`
- `jenkins_ansible_password`
- `jenkins_jdk_package`: package used to install jdk (default is : 'openjdk-7-jdk'). If JDK is preconfigured, you can disable auto install by setting 'null'.
- `jenkins_install_php_packages`: (boolean), set true to install phpunit, phpmd... etc from debian packages.
- `jenkins_version`: provide installation with specific version

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

- Twitter: https://twitter.com/hanxhx_
