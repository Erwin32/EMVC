#!/bin/sh
. config.sh

coffee --join "bin/${ProjectName}.js" --compile app/*.coffee