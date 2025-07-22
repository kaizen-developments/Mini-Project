#!/bin/bash

# ==============================================
# Hello DevOps ISO 12207 Disposal Script
# ==============================================

VERSION="1.0.0"
IMAGE="hello-devops:$VERSION"
TAG="v$VERSION"

echo "[INFO] Starting disposal process for version $VERSION..."

# 1. Remove local Docker image
echo "[TASK] Removing Docker image..."
docker rmi -f $IMAGE 2>/dev/null || echo "[WARN] Image not found."

# 2. Remove tagged artifacts and source
echo "[TASK] Deleting release artifacts..."
rm -f output.txt output-maintained.txt 2>/dev/null || true

# 3. Remove Git tag (local only, remote optional)
echo "[TASK] Removing local git tag..."
git tag -d $TAG 2>/dev/null || echo "[WARN] Tag not found."

# 4. (Optional) Remove release from GitHub via CLI (if enabled)
if command -v gh >/dev/null; then
  echo "[TASK] Deleting GitHub release..."
  gh release delete $TAG -y || echo "[WARN] No GitHub release to delete."
fi

# 5. Clean build cache (optional)
echo "[TASK] Cleaning local Python caches..."
find . -type d -name "__pycache__" -exec rm -r {} + 2>/dev/null

echo "[INFO] Disposal complete for version $VERSION."
