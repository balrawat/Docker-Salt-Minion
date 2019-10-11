#!/bin/bash

#
# Salt-Minion Run Script
#

set -e

# Log Level
LOG_LEVEL=${LOG_LEVEL:-"debug"}

# Run Salt as a Deamon
exec /usr/bin/salt-minion --log-level=$LOG_LEVEL
