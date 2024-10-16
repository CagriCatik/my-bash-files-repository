#!/bin/bash

# List of VS Code extensions to install
extensions=(
  "ms-python.python"
)

# Loop through and install each extension
for ext in "${extensions[@]}"; do
    echo "Installing $ext..."
    code --install-extension "$ext"
done

echo "All extensions installed."
