#!/bin/bash

helm install --debug --dry-run  ccoms --create-namespace --namespace=ccoms --dependency-update  --set mongo.persistence.networkResource=nfs --set mongo.persistence.server=clm-pun-ua9914 --set  global.externalIPaddress=10.135.35.201  ccoms