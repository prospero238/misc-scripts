#!/bin/bash


propfile="$1"


cat "$propfile" | while read kp; do
     p=`echo "$kp"|cut -f1 -d"="|awk '{print toupper($0)}' | sed -e 's/\./_/g'`
     v=`echo "$kp" |grep -oE "=.*"|sed 's/=//g'`
     echo "$p: $v"
done


