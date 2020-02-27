#!/bin/bash
#
# Bash Logging
#
# Log messages to a log file from bash scripts
#
# logfile is a default, but you can override it by specifying your own logfile within the script
# you are logging from.
#
# Written by Ashley Kleynhans <ashley.kleynhans@fnb.co.za>

logfile="/tmp/bash_logging.log"

log_message() {
    msg=$1
    iso8601=`date +%Y-%m-%dT%H:%M:%S`
    message="${iso8601} : ${msg}"
    echo $message >> $logfile
}
