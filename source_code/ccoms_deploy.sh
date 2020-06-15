#!/bin/bash

## delete role if it is present
kubectl delete clusterrolebindings.rbac.authorization.k8s.io --field-selector metadata.name=mongo-view

## install ccoms project
helm install --debug ccoms --create-namespace --namespace=mongo  --generate-name --dependency-update --set mongo.persistence.networkResource=nfs --set mongo.persistence.server=clm-pun-ua9914 --set  global.externalIPaddress=10.135.35.201 

