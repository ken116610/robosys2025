# stoneコマンド　誕生石と石言葉
![test](https://github.com/YukenRo/robosys2025/actions/workflows/test.yml/badge.svg)

## 目次
1[コマンド説明]\
2[使い方]\
3[実行例]\
4[動作環境]\
5[ライセンス]\

## コマンド説明
自身の誕生月を入力するとそれに対する誕生石と石言葉がわかるコマンド

## 使い方
### 1.リポジトリのインストール
```
$ git clone https://github.com/ken116610/robosys2025.git
$ cd robosys2025
$ chmod +x stone
```

### 2.コマンドの実行
monthのところに月を入力する
```
$ echo month | ./stone
```

## 実行例
### 成功例
```
$ echo 7 | ./stone
7月: ルビー
石言葉: 情熱, 良縁, 勝利
```
### 失敗例
```
$ echo a | ./stone
Error: month must be digits
```
文字を入力した場合このようなエラーが表示される

## 動作環境
Ubuntu 22.04 LTS
Python3 系

## ライセンス
・本コマンドは三条項BSDライセンスの下にて、使用および複製が許可されています。\
・© 2025 Yuken Ro
