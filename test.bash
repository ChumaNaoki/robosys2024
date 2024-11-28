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

[ "${res}" = 0 ] && echo OK

exit $res
