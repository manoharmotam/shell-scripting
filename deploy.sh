#!/bin/bash

set -euo pipefail

#simple script to demonstrate script failure when instructions in middle of the script fails with error
#Script fails at the step where error is catched

echo "Step1: Downloading build artifact..."
curl -s -f "https://this-domain-does-not-exist-123456.com/app.tar.gz"
echo "Step 2 : Deploying to production"
