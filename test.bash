#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Ryota Miyauchi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo "${1}行目のテストが失敗しました。"
	res=1
}

res=0

out=$(echo "180 degree" | ./convert)
if [ "$?" -ne 0 ]; then ng "$LINENO"; fi
echo "${out}" | grep "3.14" || ng "$LINENO"

out=$(echo "3.141592653589793 rad" | ./convert)
if [ "$?" -ne 0 ]; then ng "$LINENO"; fi
echo "${out}" | grep "180.0" || ng "$LINENO"

out=$(echo "0 degree" | ./convert)
if [ "$?" -ne 0 ]; then ng "$LINENO"; fi
echo "${out}" | grep "0.0" || ng "$LINENO"

out=$(echo "-180 degree" | ./convert)
if [ "$?" -ne 0 ]; then ng "$LINENO"; fi
echo "${out}" | grep "\-3.14" || ng "$LINENO"

out=$(echo "90     degree" | ./convert)
if [ "$?" -ne 0 ]; then ng "$LINENO"; fi
echo "${out}" | grep "1.57" || ng "$LINENO"

out=$(printf "180 degree\n0 degree\n90 degree" | ./convert)
line_count=$(echo "${out}" | wc -l)
[ "${line_count}" -ge 3 ] || ng "$LINENO"



echo "100" | ./convert > /dev/null 2>&1
[ "$?" = 1 ] || ng "$LINENO"

echo "あ degree" | ./convert > /dev/null 2>&1
[ "$?" = 1 ] || ng "$LINENO"

echo "100 meter" | ./convert > /dev/null 2>&1
[ "$?" = 1 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
