#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Yuken Ro
# SPDX-License-Identifier: GPL-3.0-only

ng () {
	echo NG at line $1
	res=1
}

res=0

out=$(echo 7 | ./stone)
expected=$'7月: ルビー\n石言葉: 情熱, 良縁, 勝利'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo 07 | ./stone)
expected=$'7月: ルビー\n石言葉: 情熱, 良縁, 勝利'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo "13" | ./stone)
[ "$?" = 1 ]    || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

out=$(echo "a" | ./stone)
[ "$?" = 1 ]    || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

out=$(echo "" | ./stone)
[ "$?" = 1 ]    || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
