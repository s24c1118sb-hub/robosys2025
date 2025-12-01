# robosys2025
# 弧度法と度数法の変換
標準入力から弧度法で表されたものを度数法に、度数法で表されたものを弧度法に変換して出力します。
## インストール
```
$ git clone https://github.com/s24c1118sb-hub/robosys2025.git
$ cd robosys2025
$ chmod +x convert
```
## 使い方
数値と単位("degree"または"rad")を半角スペースで区切って標準入力に渡してください。
### 例1：度数法を弧度法へ変換
```
$ echo 90 degree | ./convert
1.5707963267948966
```
### 例2：弧度法を度数法へ変換
```
$ echo 3.14 rad | ./convert
179.9087476710785
```


-このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。

-このパッケージは、Ryuichi Ueda由来のコード(© 2025 Ryuichi Ueda)を利用しています。

-このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。[ryuichiueda/my_slides robosys_2025]
(https://github.com/ryuichiueda/slides_marp/tree/master/prob_robotics_2025)

-© 2025 Ryota Miyauchi
