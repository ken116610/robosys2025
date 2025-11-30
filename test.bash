#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Yuken Ro
# SPDX-License-Identifier: GPL-3.0-only

ng () {
	echo NG at line $1
	res=1
}

res=0

out=$(seq 5 | ./plus)

[ "${out}" = 15 ] || ng $LINRNO

[ "$res" = 0 ] && echo OK
exit $res

