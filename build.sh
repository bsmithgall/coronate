#!/usr/bin/bash

set -e

echo 'Removing previous build...'
rm -r build ||:
echo 'Building assets...'
npm run build
echo 'Building container...'
docker build --no-cache --platform linux/arm64 -t coronate:latest .