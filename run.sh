#!/bin/bash

# =====================================
# Hello DevOps Program Runtime Launcher
# =====================================

echo "[INFO] Launching program: hello_world.py"

# Execute the program and capture stdout
python3 hello_world.py > output.txt
EXIT_CODE=$?

echo "[INFO] Program output:"
cat output.txt

echo "[INFO] Program exited with code: $EXIT_CODE"

# Optional: fail fast if error
if [ $EXIT_CODE -ne 0 ]; then
    echo "[ERROR] Unexpected exit code."
    exit $EXIT_CODE
fi

exit 0