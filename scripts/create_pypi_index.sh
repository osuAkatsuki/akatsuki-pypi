#!/usr/bin/env bash

# Creates PyPI user and an index for uploading packages to.

devpi use http://localhost:3141
devpi login root --password=
devpi user -c pypi email= password=
devpi user -l
devpi index -c pypi/stable bases=root/pypi volatile=True mirror_whitelist=*
