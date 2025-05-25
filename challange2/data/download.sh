#!/bin/bash

# === Example: Download a dataset ===
KAGGLE_DATASET="https://www.kaggle.com/competitions/soil-classification/data"
TARGET_DIR="./data"

echo "Downloading dataset: $KAGGLE_DATASET"
mkdir -p "$TARGET_DIR"
kaggle datasets download -d "$KAGGLE_DATASET" -p "$TARGET_DIR" --unzip

echo "Download complete. Files saved to $TARGET_DIR"