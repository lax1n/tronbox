#!/usr/bin/env bash
rm -rf build
mkdir build
mkdir build/components
mkdir build/components/ContractSchema
node_modules/.bin/babel --minified --no-comments src -d build
cp -r src/components/ContractSchema/spec/ build/components/ContractSchema/spec/
cp scripts/tronbox.js build/loanbox.js
chmod +x build/loanbox.js
