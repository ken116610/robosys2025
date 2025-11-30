# robosys2025
ロボットシステム工学の課題リポジトリ

ライセンスは, GPT 3.0です。詳しくはCOPYINGを参照してください。

このソフトウェアパッケージは，GPT 3.0ライセンスの下，再頒布および使用が許可されます．

このリポジトリでは、標準入力から数値を読み取り、統計量を計算する
`numstat` コマンドを提供します。

このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
   [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2025)

numstat コマンド

numstatは、標準入力から読み込んだ数値を

- 個数（count）
- 合計（sum）
- 最小値（min）
- 最大値（max）
- 平均値（mean）

の値を計算して表示するコマンドです。


使い方

seqの後に値を入れてあげる。
例えば、
初回のみ $ chmod +x numstat
- $ seq 5 | ./numstat
- count 5
- sum 15
- min 1
- max 5
- mean 3

入力は、空白や改行で区切られた数値であれば、１行に複数書いてあってもかまいません。整数でも少数のどちらにも対応しています。
また、数字以外の文字が含まれている場合や、入力が空白の場合はエラーとして終了しステータス１を返します。


動作環境

- Ubuntu 22.04 WSL2 上のUbuntuで動作確認
- Python3系


インストール方法

GitHub からリポジトリを取得して、実行権限を付けます。

- git clone git@github.com:ken116610/robosys2025.git
- cd robosys2025
- chmod +x numstat


テスト方法

リポジトリにはtest.bashによるリグレッションテストを用意しています。

- $ chmod +x test.bash
- $ ./test.bash

を実行したときにOKと表示され、終了ステータスが０であればテストは成功です。


ライセンス

各スクリプトの先頭には、次のようなSPDX表記をつけています。

- SPDX-FileCopyrightText: 2025 Yuken Ro
- SPDX-License-Identifier: GPT-3.0-only


このリポジトリとGPTについて 


書くコマンドの案やREADMEの書き方を考えるときに、ChatGPTから提案を受けました。
最終的なコードと文章の内容は、自分で理解確認した上で編集しています。
