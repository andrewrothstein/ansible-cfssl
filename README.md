andrewrothstein.cfssl
=====================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-cfssl.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-cfssl)

Installs assorted [cfssl](https://github.com/cloudflare/cfssl) tools.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: all
  roles:
    - role: andrewrothstein.cfssl
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
