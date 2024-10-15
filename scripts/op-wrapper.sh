#!/usr/bin/env bash
source ./scripts/setup-env.sh

op run --env-file env-secrets -- ansible-playbook \
    -i inventory.ini \
    -e "target_hosts=leviathan" \
    -e "ansible_become_pass={{ lookup('env', 'LINUX_SUDO_PASS') }}" \
    setup-home-server.yml --verbose
