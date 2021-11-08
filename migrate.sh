#!/bin/bash
if [ "$#" != "1" ]; then echo "you must pass a .conf file or specify -init"

if ["$1" = "-init" ]; then echo "wordsworth"