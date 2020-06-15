#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

projects=(ccoms common config department employee mongo organization proxy)

for project from ${projects[@]}
do
  helm package -u $project
done

mv $SCRIPTPATH/*.tgz ../


