# robosys2024
ロボットシステム学授業用

# コマンドの導入方法
- コマンドラインで以下の文を入力すると、このリポジトリのプログラミングが入っている`robosys2024`というディレクトリを導入できます。
```
git clone https://github.com/ChumaNaoki/robosys2024.git
```

****

# kadai
１人でじゃんけんとあっちむいてほいをするプログラミング

# プログラミングの使用方法
- robosys2024ディレクトリを導入し移動した上で、
`./kadai`で実行出来ます。

```
cd robosys2024
```
```
./kadai
```

# 遊び方
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

# 使用例
```
じゃんけん
1:グー　2:チョキ　3:パー
何を出しますか？
2
私はパーを出したよ！
あなたの勝ち

あっちむいてほい
1:←　2:↑　3:↓　4:→
どっちを指しますか？
3
私は下を向いたよ！
あなたの勝ち！
```
# 注意事項
じゃんけんで3以上、
あっちむいてほいで4以上の数字を入力した場合、
その数字をそれぞれ、3,4で割った余りの値でプログラミングが進行します。

***

# plus
入力された数値を足した数値を出力するプログラミング

# 使用例
`seq`を利用した1~5の整数を足しています。
- 入力
```
seq 5 | ./plus
```
- 結果
```
15
```
***

- このソフトウェアパッケージは３条BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードは、下記スライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作としたものです。
    - [ryuichiueda/my＿slides robosys＿2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
- ©　2024 Chuma Naoki

