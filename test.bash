#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Yuken Ro
# SPDX-License-Identifier: GPL-3.0-only

ng () {
	echo NG at line $1
	res=1
}

res=0


out=$(seq 5 | ./numstat)
expected=$'count 5\nsum 15\nmin 1\nmax 5\nmean 3'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo あ | ./numstat)
[ "$?" = 1 ]    || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

out=$(echo -n "" | ./numstat)
[ "$?" = 1 ]    || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"

