#!/bin/bash
set -e

influx apply --force true --file /docker-entrypoint-initdb.d/apache_jmeter.yml
