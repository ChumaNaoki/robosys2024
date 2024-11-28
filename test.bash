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

out=$(./attimuitehoi)
[ "${out}" = "じゃんけん
1:グー　2:チョキ　3:パー
何を出しますか？" ] || ng "$LINENO"


[ "${res}" = 0 ] && echo OK

exit $res
