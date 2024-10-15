#!/usr/bin/env bash
if [ ! -d .venv ]; then
    python -m venv .venv
    source .venv/bin/activate
    pip list | grep -q ansible || pip install ansible
else
    if [ -z "$VIRTUAL_ENV" ]; then
        source .venv/bin/activate
    fi
fi
