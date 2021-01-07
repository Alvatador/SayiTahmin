#!/bin/bash

# Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
tp="\e[0m"


echo -e "$cafe Hoşgeldiniz! Oyunun Amacı İsminden Belli Zaten :D  (1-100 Arasında Bir Sayı Tutunuz)"
echo -n "Tahmininiz: "
read n 
echo -e "$green"

echo $((cevap = 1 + $RANDOM % 100))


while (( $n != cevap )); do
echo -e "$blue"
if (( $n < cevap )); then
        clear
		echo "Daha Yüksek Bir Sayı Deneyin"
        sleep 1.5
        echo -n "Tahmininiz: "
        read n 

	elif (( $n > cevap )); then
        clear
		echo "Daha Alçak Bir Sayı Deneyin"
        sleep 1.5
        echo -n "Tahmininiz: "
        read n 
	fi
 done 
echo -e "$green Cevap:$n $green Cevabınız Doğrudur Tebrikler"
sleep 3
clear
bash sayi-tahmin.sh
