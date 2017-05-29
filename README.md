andrewrothstein.cfssl
=====================
[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-cfssl.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-cfssl)

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
