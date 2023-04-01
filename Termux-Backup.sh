#/bin/bash
clear
#Banner
echo -e "|Desenvolvido Por \e[1;31;43m Apolo777\e[0m |"
echo ""
echo "https://t.me/eusoou"
echo ""
sleep 2s
echo -e "\e[1;31;32m _____ _____ _____ ___  __ __ __ _  _ \e[0m";
echo -e "\e[1;31;32m  ||   ||==  ||_// || \/ | || || \\// \e[0m";
echo -e "\e[1;31;32m  ||   ||___ || \\  ||    |  \\_// //\\ \e[0m ";
echo -e "\e[1;31;32m       ___  ____ ____ _  _ _  _ ___ \e[0m";
echo -e "\e[1;31;32m       |__] |__| |    |_/  |  | |__] \e[0m";
echo -e "\e[1;31;32m       |__] |  | |___ | \_ |__| | \e[0m";

echo ""
echo ""

#Perguntar Oque Quer
echo -e "\e[1;31;32m OPÇØES\e[0m"
echo ""
echo -e "\e[1;31;43m    ___________________\e[0m"
echo -e "\e[1;31;43m(1)|  Backup-Termux   |\e[0m"
echo -e "\e[1;31;43m   --------------------\e[0m"
echo -e "\e[1;31;43m(2)|  Restaurar-Termux|\e[0m"
echo -e "\e[1;31;43m   ____________________\e[0m"
echo ""
echo ""
a="tar -zcf /sdcard/termux-backup.tar.gz -C /data/data/com.termux/files ./home ./usr"
b="tar -zxf /sdcard/termux-backup.tar.gz -C /data/data/com.termux/files --recursive-unlink --preserve-permissions"
echo -n -e "\e[1;31;32m Escolha A Opção: \e[0m"
read opcao;

if [ $opcao = 1 ]; then
    clear; echo -e "\e[1;31;32m Aguarde Fazendo backup de arquivos...\e[0m"; $a; sleep 2s; clear; echo -e "\e[5;31m Backup Concluido \e[0m"; ls -a;
elif [ $opcao = 2 ]; then
    clear; echo -e "\e[1;31;32m Aguarde Restaurando...\e[0m"; $b; clear; echo -e " Termux Restaurado, \e[36mFeche e Entre Novamente \e[0m"; sleep 2s; exit
else
    clear; echo -e "\e[1;31;32m OPÇAO INVALIDA \e[0m";./Termux-Backup.sh
fi
