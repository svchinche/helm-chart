#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

help depedency update ccoms
help depedency update common
help depedency update config
help depedency update department
help depedency update employee
help depedency update mongo
help depedency update organization
help depedency update proxy

helm package ccoms
helm package common
helm package config
helm package department
helm package employee
helm package mongo
helm package organization
helm package proxy

mv $SCRIPTPATH/*.tgz ../


