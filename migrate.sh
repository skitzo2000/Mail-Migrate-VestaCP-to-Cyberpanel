#!/bin/bash
if [ "$#" != "1" || ! -f "$pwd/migrate.conf"]; then echo "you must have a migrate.conf file or specify -init"
else
    if ["$1" = "-init" ];then 
        if [-f "$pwd/migrate.conf_sample"];then cp migrate.conf_sample migrate.conf fi
    else
        curl https://raw.githubusercontent.com/skitzo2000/Mail-Migrate-VestaCP-to-Cyberpanel/main/migrate.conf_sample --output migrate.conf_sample
        echo "migrate.conf_sample downlaoded.  Please adjust with your values for more info see the github page: https://github.com/skitzo2000/Mail-Migrate-VestaCP-to-Cyberpanel"
    fi
fi

if [ -f "$pwd/migrate.conf" ]; then 
    source $pwd/migrate.conf
    echo "Init completed"
fi
