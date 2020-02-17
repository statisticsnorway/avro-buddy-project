#!/usr/bin/env bash

declare -a repos=(
  "avro-buddy-core"
  "avro-buddy-xml"
  "avro-buddy-generator"
  "skatt-synthetic-data-to-parquet"
)

for repo in "${repos[@]}"
do
  echo git -C ${repo}/ pull --rebase
  git -C ${repo}/ pull --rebase
done