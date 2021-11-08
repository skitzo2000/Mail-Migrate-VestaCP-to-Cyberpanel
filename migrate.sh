#!/bin/bash
if [ "$#" != "1" || ! -f "$pwd/migrate.conf"]; then echo "you must pass a .conf file or specify -init"
fi

if ["$1" = "-init" ]; then cp migrate.conf_sample

source $pwd/migrate.conf
