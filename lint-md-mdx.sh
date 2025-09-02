#!/bin/bash

# Script to apply markdownlint to all MD & MDX files in a directory
# Usage: ./lint-mdx.sh [directory]

DIR=${1:-.}

if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' does not exist"
    exit 1
fi

echo "Running markdownlint on MD & MDX files in: $DIR"

find "$DIR" -name "*.mdx" -o -name "*.md" -type f -exec markdownlint --fix {} \;

echo "Linting complete"
