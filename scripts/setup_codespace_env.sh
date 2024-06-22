#!/usr/bin/env bash
set -x

mkdir -p ~/.dbt
ln -sf $(readlink -f profiles.yml) ~/.dbt/profiles.yml

pip3 install poetry==1.2.2

# Convenience workspace directory for later use
WORKSPACE_DIR=$(pwd)

# Change some Poetry settings to better deal with working in a container
poetry config cache-dir ${WORKSPACE_DIR}/.cache
poetry config virtualenvs.in-project true

# Now install all dependencies
poetry install

# code profiles.yml