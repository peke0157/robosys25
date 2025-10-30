#!/bin/bash


ng (){
	echo ${1}行目が違うよ
	res=1
}

res=0
a=三浦
[ "$a" = 十浦 ] || ng "$LINENO"
[ "$a" = 三浦 ] || ng "$LINENO"
[ "$a" = 二浦 ] || ng "$LINENO"
[ "$a" = 四浦 ] || ng "$LINENO"

exit $res


