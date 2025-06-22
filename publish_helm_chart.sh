#!/bin/bash

# Define variables
CHART_REPO_PATH="$HOME/Studio/HealthTracker/helm"
CHART_PATH="$HOME/repos/charts"
NEW_VERSION="2.0.0"
CHART_NAME="aiops"
CHART_TGZ="${CHART_NAME}-${NEW_VERSION}.tgz"
CHART_REPO_URL="https://vijayvikma.github.io/charts"
#HELM_HOME=$(helm home)

# 1. Update Chart version in Chart.yaml (assuming it's in the chart directory)
echo "Updating Chart version to $NEW_VERSION"
sed -i '' "s/^version: .*/version: $NEW_VERSION/" "$CHART_REPO_PATH/$CHART_NAME/Chart.yaml"

# 2. Package the Helm chart
echo "Packaging the Helm chart $CHART_NAME"
helm package "$CHART_REPO_PATH/$CHART_NAME" --destination "$CHART_PATH"

# 3. Update the index.yaml in the repository
echo "Updating index.yaml in the repository"
helm repo index "$CHART_PATH" --url "$CHART_REPO_URL"

# 4. If you want to push the chart to a remote Helm repository, use helm push (this is only available if you have the plugin installed)
# helm push "$CHART_REPO_PATH/$CHART_TGZ" 

# Verify if the chart was added
#echo "Verifying if the chart version $NEW_VERSION is listed in the repository"
#helm search repo "$CHART_NAME"

#echo "Helm chart $CHART_NAME version $NEW_VERSION has been successfully published!"

