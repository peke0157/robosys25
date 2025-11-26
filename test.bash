#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Hiroto Miura
# SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(seq 5 | ./kadai)

expected=$(cat << EOF
1 -> 0b1
1 -> 0o1
1 -> 0x1
2 -> 0b10
2 -> 0o2
2 -> 0x2
3 -> 0b11
3 -> 0o3
3 -> 0x3
4 -> 0b100
4 -> 0o4
4 -> 0x4
5 -> 0b101
5 -> 0o5
5 -> 0x5
15
0b1111
0o17
0xf
EOF
)

diff <(echo "${out}") <(echo "${expected}") || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./kadai)
[ "$?" = 1 ] || ng "$LINENO"
echo "${out}" | grep -q "0"
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  | ./kadai)
[ "$?" = "" ] || ng "$LINENO"
echo "${out}" | grep -q "0"
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "${res}" = 0 ] && echo OK
exit $res


