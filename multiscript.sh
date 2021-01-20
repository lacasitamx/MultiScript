#!/bin/bash
rm -rf .bash_history
#CREADO /17/SEP/2020
#BY [ ALEXMOD-TEAM ]
#COLABORADOR [ CASITA ]
#CREADO PARA EL GRUPO @CONECTEDMX_VIP
#@conectedmx

#
#QUEDA PROIBIDO SU VENTA
#
#SCRIPT INTERNO BY KALIX1
#SCRIPT DANKELTHAHER
#SCRIPT POWER MX V3.5
#SCRIPT SSHPLUS BY CRAZY VPN
#adm-mx reaper
#TESTIANDO SCRIPT
fun_bar (){
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
echo -ne "\033[1;33m ["
while true; do
   for((i=0; i<18; i++)); do
   echo -ne "\033[1;31m##"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;33m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "\033[1;33m ["
done
echo -e "\033[1;33m]\033[1;31m -\033[1;32m 100%\033[1;37m"
}
fun_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}
update(){
echo -e "\e[1;37m ACTUALIZANDO SISTEMA...."
fun_bar 'apt-get update -y'
fun_bar 'apt-get upgrade -y'
#apt-get install figlet -y &>/dev/null
}
msg () {
BRAN='\033[1;37m' && VERMELHO='\e[31m' && VERDE='\e[32m' && AMARELO='\e[33m'
AZUL='\e[34m' && MAGENTA='\e[35m' && MAG='\033[1;36m' &&NEGRITO='\e[1m' && SEMCOR='\e[0m'
 case $1 in
  -ne)cor="${VERMELHO}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -ama)cor="${AMARELO}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verm)cor="${AMARELO}${NEGRITO}[!] ${VERMELHO}" && echo -e "${cor}${2}${SEMCOR}";;
  -azu)cor="${MAG}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -verd)cor="${VERDE}${NEGRITO}" && echo -e "${cor}${2}${SEMCOR}";;
  -bra)cor="${BRAN}${NEGRITO}" && echo -ne "${cor}${2}${SEMCOR}";;
  -bar2)cor="\e[0;31m========================================\e[0m" && echo -e "${cor}${SEMCOR}";;
  -bar)cor="\e[1;31m——————————————————————————————————————————————————————" && echo -e "${cor}${SEMCOR}";;
 esac
}
df(){
echo "
 ╭━━━╮╭━━━╮╭━━━╮╭━━╮╭━━━╮╭━━━━╮
┃╭━╮┃┃╭━╮┃┃╭━╮┃╰┫┣╯┃╭━╮┃┃╭╮╭╮┃
┃╰━━╮┃┃╱╰╯┃╰━╯┃╱┃┃╱┃╰━╯┃╰╯┃┃╰╯
╰━━╮┃┃┃╱╭╮┃╭╮╭╯╱┃┃╱┃╭━━╯╱╱┃┃╱╱
┃╰━╯┃┃╰━╯┃┃┃┃╰╮╭┫┣╮┃┃╱╱╱╱╱┃┃╱╱
╰━━━╯╰━━━╯╰╯╰━╯╰━━╯╰╯╱╱╱╱╱╰╯╱╱
╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱
╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱

              "
              }
IP=$(wget -qO- ipv4.icanhazip.com)
systema () {
system=$(echo $(cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //'))
echo $system|awk '{print $1, $2}'
}
scriptmx(){
echo -e "\e[1;33m SCRIPT VPS-MX 8.1\n             SELECIONADO"
rm -rf multiscript.sh
rm -rf .bash_history
sleep 3
wget https://raw.githubusercontent.com/casitadelterror/scripts/master/instalador/instalscript &> /dev/null; chmod +x instalscript* && ./instalscript*
rm -rf multiscript.sh instalscript
rm -rf .bash_history
}
scriptmx2(){
echo -e "\e[1;33m SCRIPT VPS-MX 8.2\n             SELECIONADO"
rm -rf multiscript.sh
rm -rf .bash_history
sleep 3
wget https://raw.githubusercontent.com/casitadelterror/scripts/master/instalador/instalscript.sh &> /dev/null; chmod +x instalscript.sh* && ./instalscript.sh*
rm -rf multiscript.sh instalscript.sh
rm -rf .bash_history
}
power(){
rm -rf multiscript.sh
rm -rf .bash_history
wget https://raw.githubusercontent.com/casitadelterror/vpspack5.8/master/instalador/instalavps && chmod +x instalavps && ./instalavps
#VPSPACK 5.8
#REVENTADO X: ILLUMINATIS
#CREDITOS: PWRMX
#BY : LA-CASITA
#TOTALMEMTE FREE

rm -rf multiscript.sh instalavps
rm -rf .bash_history
}
dankel(){
echo -e "\e[1;33m SCRIPT by dankelthaher\n             SELECIONADO"
rm -rf multiscript.sh
rm -rf .bash_history
sleep 3
wget https://raw.githubusercontent.com/casitadelterror/dankeladm/master/instalador/instala.sh && chmod +x instala.sh && ./instala.sh
rm -rf multiscript.sh instala.sh
rm -rf .bash_history
}

sshplus(){
echo -e "\e[1;33m SCRIPT SSHPLUS ESPAÑOL MOD\n             SELECIONADO"
rm -rf .bash_history
rm -rf multiscript.sh
sleep 3
wget https://raw.githubusercontent.com/scriptsmx/script/master/PLUSX/Plus; chmod +x Plus; ./Plus
rm -rf multiscript.sh
rm -rf Plus
}
sshplus2(){
echo -e "\e[1;33m SCRIPT SSHPLUS v32 ORIGINAL\n             SELECIONADO"
rm -rf .bash_history
rm -rf multiscript.sh
sleep 3
    #- SSHPLUS MANAGER v32 ORIGINAL OFICIAL
    # NSTAL ARQUIVOS ORIGINALES ENCRIPTADOS POR   @crazy_vpn
    #- UPDATE 16/01/2020
wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/SSHPLUS-MANAGER-FREE/master/Sistema/Intall-Original/Plus; chmod 777 Plus; ./Plus
rm -rf multiscript.sh
rm -rf Plus
}
reaper(){
echo -e "\e[1;33m SCRIPT MOD ADM-MX -SIXREAPER\n             SELECIONADO"
sleep 3
rm -rf .bash_history multiscript.sh
wget https://raw.githubusercontent.com/casitadelterror/scripts/master/gamo/instalador && chmod +x instalador && ./instalador
rm instalador
}
#testiando

#
clear
#figlet  *SCRIPT*
#figlet  *FREE*
#figlet  *2020*
df
echo ""
msg -bar
echo -e "\e[1;37m	MENÚ DE OPCIONES"
echo -e "\e[33m     MAQUINA            SISTEMA"
echo -e "\e[33m  IP : \e[31m$IP\e[0m   \e[33m OS : \e[31m$(systema)"
echo -e "\e[1;31m \e[1;100m@conectedmx_vip   =    @conectedmx\e[0m"
msg -bar
#
echo -e "\e[1;37m	INSTALACIONES SIN KEY"
echo -e "\e[1;43m	CRÉDITOS: @LA-CASITA\e[0m" #LOS CRÉDITOS A LA OFICIAL DE LA CASITA DEL TERROR 
msg -bar
echo -e "\e[1;31m {-1-} \e[1;33m VPSMX BY KALIX1 -8.1 (CASITA)" #by kalix
echo -e "\e[1;31m {-2-} \e[1;33m VPSMX BY KALIX1 -8.2 (OFICIAL)" #by kalix ....
echo -e "\e[1;31m {-3-} \e[1;33m NEWADM by DANKELTHAHER (OFF)" #by dankelthaher
echo -e "\e[1;31m {-4-} \e[1;33m VPSPACK 5.8 (PWRMX)" #by illuminati #creditos: powermx
#sshplus -testeo pueda que no funcione correctamente
echo -e "\e[1;31m {-5-} \e[1;33m SSHPLUS (ES) -(CASITA)" #creditos: illuminati & crazyvpn
echo -e "\e[1;31m {-6-} \e[1;33m SSHPLUS (v32) -(ILLUMINATI & CRAZYVPN)" #BY CRAZY_VPN
echo -e "\e[1;31m {-7-} \e[1;33m ADM-MX MOD BY (SIXREAPER)" #mod de kalix
echo -e "\e[1;31m {-8-} \e[1;37m ACTUALIZAR PAQUETES -UPDATE -(opcional)" #actualizar los paquetes por favor
echo -e "\e[1;31m {-0-} \e[1;37m SALIR"
read -p "$(echo -e "\e[1;37m SELECIONE UNA OPCION: \e[1;33m")" casitax
case $casitax in
#
0)
exit ;;
1)
scriptmx ;;
2)
scriptmx2 ;;
3)
dankel ;;
4)
power ;;
5)
sshplus ;;
6)
sshplus2 ;;
7)
reaper ;;
8)
update ;;
*)echo -e "\e[1;37m POR FAVOR SELECIONE EL NÚMERO CORRECTO"
rm -rf multiscript.sh
rm -rf .bash_history
read -p " ENTER PARA VOLVER "
mix
;;
#
esac
rm -rf multiscript.sh
rm -rf .bash_history