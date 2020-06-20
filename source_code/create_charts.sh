#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

## Delete all charts before creating it
rm -rf $SCRIPTPATH/../*.tgz

projects=(ccoms common config department employee mongo organization proxy)

for project in ${projects[@]}
do
  helm package -u $project -d $SCRIPTPATH/../
done