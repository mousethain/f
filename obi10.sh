#!/system/bin/sh
TMP=/data/tmp/$$
SKIP=28
SCRIPT="cc.sh"
PROG="${TMP}/`basename $0`"
mkdir -m=rwx -p $TMP
touch $PROG
tail -n +$SKIP "$0" | base64 -d > ${PROG}.tar.gz
cd $TMP
tar -xzvf `basename $0`.tar.gz > /dev/null
cd $OLDPWD
if [ $? -eq 0 ]; then
  sh=`sed -n '1p' ${TMP}/${SCRIPT}`
  if echo "$sh" | grep '\#\!/.*' > /dev/null; then
    sh=${sh#*\#\!}
  else
    sh=$SHELL
  fi
  $sh ${TMP}/${SCRIPT} $@
  res=$?
  rm -rf $TMP
  exit $res
else
  echo "解包失败!" 1>&2
  rm -rf $TMP
  exit 1
fi
H4sIAAAAAAACA0tO1ivOYKAtMAACMzMDMA0EQNrI2MTQFMY3MDMxZDA0MTYyNTE0NjMByhsampoY
MSgYMNABlBaXJBYpKDAU5eeX4FOXWpZaVJmUn1LJMKxAanJGvoIS16NpEzFQBxIiKIKuHZeJBBkT
sRpHkomYLqLURErdSH44KjGMglEwCkYBbQAAUe8zMAAIAAA=
