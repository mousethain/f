#!/system/bin/sh
MD5=7ed1be3aca73fabd2b068cbbb99a6eda *-
SKIP=31
TMP=/data/tmp/$$
PROG="${TMP}/`basename $0`"
MD5(){
if [ -f "$1" ]; then
  cat $1|md5sum -b
  return $?
else
  echo $1|md5sum -b
  return $?
fi
}
mount -o remount,rw /data
mkdir -m=rwx -p $TMP
touch $PROG
trap "rm -rf $TMP; exit $res" EXIT
if tail -n +$SKIP "$0" | gzip -cd > "$PROG"; then
  if [ ! "`MD5 ${PROG}`" == $MD5 ]; then
    echo "文件损坏!"
    exit 1
  fi
  chmod 755 "$PROG"
  sh "$PROG" ${1+"$@"}; res=$?
else
  echo "解包失败!"
  exit 1
fi
exit $res
��Tc7 KM��WP�z4m"�@BEе�2� c"V�H2�E��H��G% ":�!�  