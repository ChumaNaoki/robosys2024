#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Chuma Naoki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

### hennanov###
out=$(echo a | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

###onkai通常の動作のテスト###
out=$(echo 300 | ./onkai)
[ "${out}" = "42 D4 293.66 311.12" ] || ng "$LINENO"

###入力された周波数が低すぎて測れなかった場合テスト###
out=$(echo 2 | ./onkai)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

###マイナスの値を周波数として入力された場合テスト###
out=$(echo -20 | ./onkai)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

###onkai鍵盤の範囲外の周波数が入力された場合の動作のテスト###
out=$(echo 12300 | ./onkai)
[ "${out}" = "- F#9 11839.82 12543.84" ] || ng "$LINENO"

out=$(echo a | ./onkai)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
