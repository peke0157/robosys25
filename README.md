# robosys2025
ロボットシステム学課題

![test](https://github.com/peke0157/robosys25/actions/workflows/test.yml/badge.svg)

## 課題1のプログラムの内容
入力したn(10進数)をそれぞれ2進数、8進数、16進数に変換した値を出力し、合計値も同様に出力する。

## 準備
- このリポジトリをターミナルで下記のようにクローンしてください。
``` 
$ git clone https://github.com/peke0157/robosys2025.git
```
- 下記のディレクトリに移動して、権限を付与する
```
$ cd ~/robosys2025/

$ chmod +x kadai
```

## 使い方
- 実行方法の例
```
$ seq 3 | ./kadai
```

- 実行結果の例
```
1 -> 0b1
1 -> 0o1
1 -> 0x1
2 -> 0b10
2 -> 0o2
2 -> 0x2
3 -> 0b11
3 -> 0o3
3 -> 0x3
6
0b110
0o6
0x6
```
- 連続していない複数の数字で実行したい場合
```
$ echo -e "5\n8\n14" | ./kadai

5 -> 0b101
5 -> 0o5
5 -> 0x5
8 -> 0b1000
8 -> 0o10
8 -> 0x8
14 -> 0b1110
14 -> 0o16
14 -> 0xe
27
0b11011
0o33
0x1b
```

## 必要なソフトウェア
- Python 
    - テスト済みバージョン3.7~3.10

## テスト環境
- Ubuntu 24.04.1 LTS

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，上田隆一教授のスライド由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 Hiroto Miura
