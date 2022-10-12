#!/bin/bash
rm -rf dist/
export NODE_ENV=development
npm run build
cp -r assets dist/assets
npx http-server dist/