#!/bin/bash
### Test 2
cd /var/lib/jenkins/workspace/HelloBuild
java HelloWorld

ret=$?

if [[ $ret == 0 ]]; then
	echo "successfully ran HelloWorld"
	exit 0
else
	echo "failed running HelloWorld. Return $ret"
	exit $ret
fi
