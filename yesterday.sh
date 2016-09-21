#!/bin/sh

pushd .
cd /Users/rtp/work/linkmill.4
./linkmill.py -c teeler.d -o ~/github/linkmill/
popd
./summary.sh
ssh-add ~/.ssh/github
git add -A
git commit -am 'Yesterday'
git push origin master
