#!/bin/bash

- #https://stackoverflow.com/questions/56280806/ansible-dynamic-inventory-with-bash-script


 if [ "$1" == "--list" ]; then
 cat<<EOF
 {
 "_meta": {
 "hostvars": {
 "web": {
 "ansible_host": "192.168.122.50",
 "ansible_port": 22
 }
 }
 },
 "all": {
 "children": [
 "ungrouped"
 ]
 },
 "ungrouped": {
 "hosts": [
 "web"
 ]
 }
 }

 EOF
 elif [ "$1" == "--host" ]; then
 echo '{"_meta": {hostvars": {}}}'
 else
 echo "{ }"
 fi
