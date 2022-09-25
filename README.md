andrewrothstein.cfssl
=====================
![Build Status](https://github.com/andrewrothstein/ansible-cfssl/actions/workflows/build.yml/badge.svg)

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
