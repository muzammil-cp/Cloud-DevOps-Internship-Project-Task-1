#!/bin/bash

set -e

PROJECT_NAME="cloud-devops-project"

echo "======================================"
echo " Cloud DevOps Project Setup"
echo "======================================"

if [ -d "$PROJECT_NAME" ]; then
    echo "Project directory already exists."
    exit 1
fi

mkdir "$PROJECT_NAME"
cd "$PROJECT_NAME"

mkdir -p docs scripts config logs screenshots

touch config/.gitkeep
touch logs/.gitkeep
touch screenshots/.gitkeep

cat > README.md <<EOF
# Cloud DevOps Project

This project was initialized automatically using Bash.

## Structure

- docs
- scripts
- config
- logs
- screenshots
EOF

cat > .gitignore <<EOF
*.log
.env
*.pem
__pycache__/
*.pyc
EOF

git init

git add .

git commit -m "Initial automated project setup"

echo
echo "======================================"
echo " Project created successfully"
echo "======================================"

git status
