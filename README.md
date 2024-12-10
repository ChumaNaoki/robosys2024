# robosys2024
ロボットシステム学授業用

***

# コマンドの導入方法
- コマンドラインで以下の文を入力すると、このリポジトリのプログラミングが入っている`robosys2024`というディレクトリを導入できます。
```
git clone https://github.com/ChumaNaoki/robosys2024.git
```

****

# attimuitehoi
１人でじゃんけんとあっちむいてほいをするプログラミング

## コマンドの使用方法
- robosys2024ディレクトリを導入し移動した上で、
`./attimuitehoi`で実行出来ます。

```
cd robosys2024
```
```
./attimuitehoi
```

## 遊び方
```
じゃんけん
1:グー　2:チョキ　3:パー
何を出しますか？
```
```
あっちむいてほい
1:←　2:↑　3:↓　4:→
どっちを指しますか？
```
のような形の説明に沿って、
じゃんけんで出す手や、あっちむいてほいで向く方向を数字で入力します。

## 使用例
```
じゃんけん
1:グー　2:チョキ　3:パー
何を出しますか？
2←入力
私はパーを出したよ！
あなたの勝ち

あっちむいてほい
1:←　2:↑　3:↓　4:→
どっちを指しますか？
3←入力
私は下を向いたよ！
あなたの勝ち！
```
## 注意事項
- じゃんけんで3以上、
あっちむいてほいで4以上の数字を入力した場合、
その数字をそれぞれ3,4で割った余りの値でプログラミングが進行します。
- 0以下の数値が入力された場合、正しくプログラミングが動作しない恐れがあります。
- 数字ではない文字を入力した場合errorが出力されます。

***
# onkai
標準入力された周波数に対しその周波数の情報として、
ピアノの鍵盤番号、音階名、その音階の周波数範囲(最低周波数　最高周波数)を標準出力するプログラミング

## コマンドの使用方法
- robosys2024ディレクトリを導入し移動した上で、
`echo 周波数 | ./onkai`で実行出来ます。

```
cd robosys2024
```
```
echo 440 | ./onkai
      ↑
調べたい周波数の数値
```

## コマンドの使用例
500Hzの周波数の情報を調べます。
- 入力
```
echo 500 | ./onkai
```
- 出力（ピアノの鍵盤番号　音階名　最低周波数　最高周波数）
```
50 B4 493.88 523.24
```

## 注意事項
- 周波数として27.5Hz以下の値を入力した場合、
ピアノ鍵盤の最低周波数であるA0(ラ0)を下回るため音階名が測定不可となり標準エラー出力でエラーを出力します。
- マイナスの値を入力した場合も同じく、マイナスの音階名が存在しない為標準エラー出力でエラーを出力します。
- 音階の周波数範囲の計算として小数第10の位まで計算をし、小数第3の位で四捨五入をした上で出力しているため、
それ以上に細かい位まで計算をしている情報とはわずかに数値が異なる可能性があります。
- 数字ではない文字を入力した場合errorが出力されます。
- 88ある鍵盤番号の範囲外の周波数が入力された場合、鍵盤番号の欄には`-`が出力されます。

***
# plus
入力された数値を足した数値を出力するプログラミング

## 使用例
`seq`を利用した1~5の整数を足して出力します。
- 入力
```
seq 5 | ./plus
```
- 出力
```
15
```

***

# テスト環境
- Ubuntu 22.04.5 LTS

# 必要なソフトウェア
- Python
  -テスト済みバージョン3.7-3.10

***
# 参考にさせていただいたサイト
- [【Python 入門】条件分岐の基本である if 文の使い方をわかりやすく解説！](https://www.kikagaku.co.jp/kikagaku-blog/python-if-else-elif/)
- [【Python】defとは？pythonで関数を作成・使用する方法](https://ungifted.tech/blog/python-def/)
- [【Python入門】randomモジュールの使い方まとめ](https://www.sejuku.net/blog/20915)
- [【Python入門】input関数の使い方をわかりやすく解説](https://www.sejuku.net/blog/23823)
- [【初心者向け】Pythonでwhile文を使う方法](https://techplay.jp/column/610)
- [Pythonのf-stringsについてしっかり調べてみた](https://qiita.com/simonritchie/items/74f544944ee11a226613)

# 著作権
- このソフトウェアパッケージは３条BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- ©　2024 Chuma Naoki

