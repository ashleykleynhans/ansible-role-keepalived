#!/bin/bash

source "/etc/keepalived/bash_logging.sh"
hostname=`hostname`
logfile="/var/log/keepalived.log"

log_message "${hostname} is currently in the keepalived state of FAULT"
