#!/bin/bash

REQUIRED=10

### Test 1
cd /var/lib/jenkins/workspace/HelloBuild
x=$(java HelloWorld | grep 'Hello World!!!' | wc -l)

if [[ $x == $REQUIRED ]]; then
	echo "returned as required"
	exit 0
fi
echo "test failed - number of lines should be $REQUIRED, instead it's $x"
exit 1
