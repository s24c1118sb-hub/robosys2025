#!/bin/bash

ng(){
	echo ${1}行目が違うよ
        res=1
}

res=0
a=宮内は天才
[ "$a" = 宮内は天才 ] || ng "$LINENO"
[ "$a" = 宮内は天才ではない ] || ng "$LINENO"

exit $es

ng 123

a="宮内は天才"
[ "$a" = "宮内は天才" ]
echo $?
[ "$a" = "宮内は天才ではない" ]
echo $?
