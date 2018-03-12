#!/usr/bin/env bash

# Set PROJECT_NAME and ENVIRONMENT for testing/demo
export PROJECT_NAME=scale-of-belief-lambda
export ENVIRONMENT=staging

# Export environment variables for use with serverless
filename=$ECS_CONFIG/ecs/$PROJECT_NAME/env.$ENVIRONMENT
while read line; do
  if [[ "$line" != "" && ${line:0:1} != '#' ]]; then
    export "$line"
  fi
done < <(blackbox_cat "$filename")

set -x && \
    ./node_modules/.bin/serverless package --stage $ENVIRONMENT --package dist/$ENVIRONMENT-$BUILD_NUMBER --verbose