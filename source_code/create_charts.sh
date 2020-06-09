#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

helm dependency update ccoms
helm dependency update common
helm dependency update config
helm dependency update department
helm dependency update employee
helm dependency update mongo
helm dependency update organization
helm dependency update proxy

helm package ccoms
helm package common
helm package config
helm package department
helm package employee
helm package mongo
helm package organization
helm package proxy

mv $SCRIPTPATH/*.tgz ../


