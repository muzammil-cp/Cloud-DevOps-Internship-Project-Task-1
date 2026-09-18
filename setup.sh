#!/bin/bash

set -e

PROJECT_NAME="${1:-cloud-devops-project}"

echo "======================================"
echo " Cloud DevOps Project Setup"
echo "======================================"

if [ -d "$PROJECT_NAME" ]; then
    echo "Project directory already exists: $PROJECT_NAME"
    exit 1
fi

mkdir -p "$PROJECT_NAME"/{docs,scripts,config,logs,screenshots}
cd "$PROJECT_NAME"

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
# Environment / secrets
.env
.env.*
!.env.example
*.pem
*.key

# Python
__pycache__/
*.pyc
.venv/
venv/

# IDE / OS
.vscode/
.idea/
.DS_Store
Thumbs.db

# Temporary files
*.tmp
*.swp
EOF

git init
git branch -M main
git add .
git commit -m "Initial automated project setup"

echo
echo "======================================"
echo " Project created successfully: $PROJECT_NAME"
echo "======================================"

git status
