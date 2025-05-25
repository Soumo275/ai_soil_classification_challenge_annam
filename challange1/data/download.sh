#!/bin/bash

# === Example: Download dataset from a Kaggle competition ===
COMPETITION_NAME="soil-classification"
TARGET_DIR="./data"

echo "Downloading dataset for competition: $COMPETITION_NAME"
mkdir -p "$TARGET_DIR"
kaggle competitions download -c "$COMPETITION_NAME" -p "$TARGET_DIR"

echo "Download complete. Files saved to $TARGET_DIR"