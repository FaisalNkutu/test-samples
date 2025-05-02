#!/bin/bash

# Set working paths
TARGET_JAR="/disk/apps/websphere/AppServer/profiles/MDM32-2/expandedBundles/CBSAEnterpriseMDM.cba_116.11.2605.20241121-1431.jar/CBSAEnterpriseMDMDataModel.jar"
EXTRACT_DIR="/tmp/cbsa_classes"
ZIP_OUTPUT="/tmp/CBSA_Classes.zip"

# Create working directory
mkdir -p "$EXTRACT_DIR"
cd "$EXTRACT_DIR" || exit 1

# List matching class files
echo "🔍 Finding CBSA-related classes in $TARGET_JAR ..."
MATCHING_CLASSES=$(jar tf "$TARGET_JAR" | grep -i "CBSA.*\.class")

if [[ -z "$MATCHING_CLASSES" ]]; then
  echo "❌ No matching CBSA*.class files found."
  exit 1
fi

# Extract them
echo "📦 Extracting the following classes:"
echo "$MATCHING_CLASSES"
echo "$MATCHING_CLASSES" > /tmp/matching_cbsa_classes.txt

while read -r class; do
  jar xf "$TARGET_JAR" "$class"
done <<< "$MATCHING_CLASSES"

# Zip results
echo "🗜️ Zipping extracted classes to $ZIP_OUTPUT ..."
zip -r "$ZIP_OUTPUT" . > /dev/null

echo "✅ Done. You can now download: $ZIP_OUTPUT"
