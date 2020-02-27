#!/bin/bash

source "/etc/keepalived/bash_logging.sh"
hostname=`hostname`
logfile="/var/log/keepalived.log"

log_message "${hostname} has been assigned the role of keepalived BACKUP"
