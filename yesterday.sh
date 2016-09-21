#!/bin/sh

pushd .
cd /Users/rtp/work/linkmill.4
./linkmill.py -c teeler.d -o ~/github/linkmill/
popd
./summary.sh
git add -A
git commit -am 'Yesterday'
git push origin master
