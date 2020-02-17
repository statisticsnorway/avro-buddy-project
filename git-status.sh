#!/usr/bin/env bash

declare -a repos=(
  "avro-buddy-core"
  "avro-buddy-xml"
  "avro-buddy-generator"
  "skatt-synthetic-data-to-parquet"
)

printf '\navro-buddy-project'
echo "----------------------------------------------------------------"
git status --short

for repo in "${repos[@]}"
do
  printf '\n%s' "${repo}"
  echo "----------------------------------------------------------------"
  git -C ${repo} status --short
done
