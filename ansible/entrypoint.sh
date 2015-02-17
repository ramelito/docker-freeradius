#!/bin/bash
ansible-playbook radius.yml -c local
exec "$@"
