#!/bin/bash
set -euo pipefail
echo "Step1: Downloading build artifact..."
curl -s -f "https://this-domain-does-not-exist-123456.com/app.tar.gz"
echo "Step 2 : Deploying to production"
