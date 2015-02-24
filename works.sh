#!/bin/sh

echo 'Does Swift work yet?'

for radar in `ls -d *|grep '^[0-9]'`
do
  pushd $radar >/dev/null
  ./radar.sh

  if [ $? -eq 0 ]
  then
    echo 'Nope 💩'
    exit 1
  fi

  popd >/dev/null
done

echo 'Yes 🎉'
