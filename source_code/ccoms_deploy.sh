#!/bin/bash

CRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

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

## delete role if it is present
kubectl delete clusterrolebindings.rbac.authorization.k8s.io --field-selector metadata.name=mongo-view

## install ccoms project
helm install --debug ccoms --create-namespace --namespace=$namespace  --generate-name --dependency-update --set mongo.persistence.networkResource=nfs --set mongo.persistence.server=clm-pun-ua9914 --set  global.externalIPaddress=10.135.35.201 

