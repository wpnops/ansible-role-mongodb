# wpnops.mongodb

[![Build Status](https://github.com/wpnops/ansible-role-mongodb/actions/workflows/molecule.yml/badge.svg)](https://github.com/wpnops/ansible-role-mongodb/actions/workflows/molecule.yml)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-wpnops.mongodb-blue.svg)](https://galaxy.ansible.com/wpninfra/mongodb/)

An [ansible role](https://galaxy.ansible.com/wpninfra/mongodb) to install and configure mongodb

## Role Variables

Please refer to the [defaults file](/defaults/main.yml) for an up to date list of input parameters.

## Dependencies

Role depends on filters defined in [nephelaiio.plugins](https://github.com/nephelaiio/ansible-collection-plugins).

## Example Playbook

```
- hosts: servers
  roles:
     - role: wpnops.mongodb
```

## Testing

Please make sure your environment has [docker](https://www.docker.com) installed in order to run role validation tests. Additional python dependencies are listed in the [requirements file](https://github.com/nephelaiio/ansible-role-requirements/blob/master/requirements.txt)

Role is tested against the following distributions (docker images):

  * Ubuntu Focal
  * Ubuntu Jammy
  * CentOS 8
  * Debian Bullseye

You can test the role directly from sources using command ` molecule test `

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
