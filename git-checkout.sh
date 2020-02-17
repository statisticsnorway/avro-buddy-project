#!/usr/bin/env bash

declare -a repos=(
  "avro-buddy-core"
  "avro-buddy-xml"
  "avro-buddy-generator"
  "skatt-synthetic-data-to-parquet"
)

for repo in "${repos[@]}"
do
  echo git clone git@github.com:statisticsnorway/${repo}.git
  git clone git@github.com:statisticsnorway/${repo}.git
done