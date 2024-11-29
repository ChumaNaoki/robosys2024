# robosys2024
ロボットシステム学授業用

# コマンドの導入方法
- コマンドラインで以下の文を入力すると、このリポジトリのプログラミングが入っている`robosys2024`というディレクトリを導入できます。
```
git clone https://github.com/ChumaNaoki/robosys2024.git
```

****

# attimuitehoi
１人でじゃんけんとあっちむいてほいをするプログラミング

# プログラミングの使用方法
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
じゃんけんで3以上、
あっちむいてほいで4以上の数字を入力した場合、
その数字をそれぞれ3,4で割った余りの値でプログラミングが進行します。
0以下の数値が入力された場合、正しくプログラミングが動作しない恐れがあります。

***

# plus
入力された数値を足した数値を出力するプログラミング

## 使用例
`seq`を利用した1~5の整数を足して出力します。
- 入力
```
seq 5 | ./plus
```
- 結果
```
15
```

***

# テスト環境
- Python
    -テスト済みバージョン3.7-3.10 
- Ubuntu 20.04 LTS

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
- このパッケージのコードは、下記スライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作としたものです。
    - [ryuichiueda/my＿slides robosys＿2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
- ©　2024 Chuma Naoki

