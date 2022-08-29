#!/bin/bash

while IFS= read -r line; do
  echo
  echo "Updating minecraft container - $line"
  docker stop $line
  docker rm $line
  cd /Users/sheridan/Public/Docker/$line
  pwd
  ./run.sh
done < minecraft_containers.list
