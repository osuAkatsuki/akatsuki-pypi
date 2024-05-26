#!/usr/bin/env bash
if ! [ -f /root/.devpi/server ]; then
    devpi-init
fi

# TODO: potentially call into /scripts/create_pypi_index.sh

exec devpi-server -c config.yml
