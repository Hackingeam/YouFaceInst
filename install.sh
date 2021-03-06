#!/bin/bash
#
# REQUISITOS
#
# VARIABLES
#
source $HOME/YouFaceInst/color.sh
#
# FUNCIONES
function YouTube {
	sleep 0.5
        clear

python $HOME/YouFaceInst/fa.py

}
# CÓDIGO
#
YouTube
echo -e ${cyan}"
INSTALANDO REQUISITOS...
"${blanco}
apt update && apt upgrade -y
echo -e "
${amarillo}[${morado}√${amarillo}]${cyan} Instalando curl...
"
pkg install -y curl > /dev/null 2>&1
echo -e "
${amarillo}[${morado}√${amarillo}]${cyan} Instalando wget...
"
pkg install -y wget > /dev/null 2>&1
echo -e "
${amarillo}[${morado}√${amarillo}]${cyan} Instalando python...
"
pkg install -y python > /dev/null 2>&1
echo -e "
${amarillo}[${morado}√${amarillo}]${cyan} Instalando python2...
"
pkg install -y python2 > /dev/null 2>&1
echo -e "
${amarillo}[${morado}√${amarillo}]${cyan} Instalando ffmpeg...
"${blanco}
pkg install -y ffmpeg > /dev/null 2>&1
YouTube
echo -e ${amarillo}"
[${rojo}√${amarillo}]${cyan} Instalando youtube-dl...
"${blanco}
cd
curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl > /dev/null 2>&1
chmod a+rx /data/data/com.termux/files/usr/bin/YouFacInst-dl > /dev/null 2>&1
cd $HOME/YouFacInst
chmod 711 YouFacInst.sh

echo -e ${amarillo}"
REQUISITOS INSTALADOS CORRECTAMENTE
EJECUTE EL COMANDO ${cyan}>>> ${rojo}bash YouFacInst.sh 
"${blanco}
