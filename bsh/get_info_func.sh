#!/usr/bin/env bash

function getInfo {

    dvdr="------------------------------------------------------------"

    date

    date -u

    echo "Days since year began $(date +%j)"

    users
    echo ${dvdr}
    who
    echo ${dvdr}
    w

    uptime

    hostname

    echo "The hostname like above is $HOSTNAME"

    # Note the variable outside the quotes works too
    echo "THe current directory is:" $PWD
}

getInfo
