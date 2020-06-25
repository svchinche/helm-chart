#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
server_name=$(hostname -f)
externalIPaddress=$(hostname -I | awk '{print $1}')
helm_appname=$(helm ls -n ccoms -q)

if [ $# -lt 1 ]
then
  echo "Usage: $0 -n"
  echo "-n <namespace name>"
  #echo "Setting defualt namespace to ccoms"
  namespace=ccoms
fi

# Need to have a colon (:) after each option that has | an argument.
while getopts n: opt
do
  case $opt in
    n) namespace=$OPTARG;;
    *) echo "Option not recognized"
       namespace=ccoms;;
  esac
done

## upgrade ccoms project
helm upgrade $helm_appname ccoms --namespace=ccoms  --set mongo.persistence.networkResource=nfs --set mongo.persistence.networkResource=nfs --set mongo.persistence.server=$server_name --set  global.externalIPaddress=$externalIPaddress