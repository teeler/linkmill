#!/bin/sh

. /etc/rc.common
CheckForNetwork
while [ "${NETWORKUP}" != "-YES-" ]; do
  sleep 5
  NETWORKUP=
  CheckForNetwork
done


pushd .
cd /Users/rtp/work/linkmill.4
./linkmill.py -c teeler.d -o ~/github/linkmill/
echo "Exited: $?"
popd
./summary.sh
ssh-add ~/.ssh/github
git add -A
git commit -am 'Yesterday'
git push origin master
