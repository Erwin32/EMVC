#!/bin/bash

cp -R ./lib ./bin/
cp -R ./app/views ./bin/
coffee -j "bin/App.js" -cmb system/_Object.coffee system/_view.coffee system/ app/
echo "compilation COMPLETE"