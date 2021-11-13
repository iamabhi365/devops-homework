#!/bin/bash
set -e

if [ -z "${!TASK_NAME}" ]; then
    echo "Environment variable TASK_NAME is not set" 2>&1 >> /var/log/envarcheck.log
else
    echo "Environment variable TASK_NAME is set."
fi
