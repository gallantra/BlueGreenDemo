#!/usr/bin/env bash

echo "Deploying to AWS CodeDeploy"

aws deploy create-deployment \
  --application-name BGappPoC \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name example-group \
  --description "My GitHub BlueGreen deployment demo" \
  --github-location repository=gallantra/BlueGreenDemo,commitId=${GIT_COMMIT}