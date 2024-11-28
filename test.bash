#!/bin/bash -xv

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

out=$(./onkai 300)
[ "${out}" = "入力された周波数300.0Hzは、
ピアノ鍵盤だと42番目の音階です。
音階名だとD4(レ4)となり、
293.66Hz~311.13Hzの音階に当たります。" ] || ng "$LINENO"

out=$(./onkai 273300)
[ "${out}" = "入力された周波数273300.0Hzは、
入力された周波数が大きすぎて88個あるピアノ鍵盤の範囲外です！
音階名だとC14(ド14)となり、
267904.58Hz~283835.01Hzの音階に当たります。
人間に聴き取れる最高周波数20kHzを超えていますね！" ] || ng "$LINENO"

out=$(./onkai 2)
[ "${out}" = "入力された周波数2.0Hzは、
ピアノの最低音であるA0（ラ0）の27.5Hzよりも小さい周波数のため測定できません。
ちなみに人間に聴き取れる最低周波数は20Hzだそうです。" ] || ng "$LINENO"

out=$(./onkai -20)
[ "${out}" = "マイナスの値は測定できません。" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
