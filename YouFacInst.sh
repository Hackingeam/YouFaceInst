#!/bin/bash
clear
#
# Created by: Edison antil
#
# YouFacInst
#
# VARIABLES
#
source $HOME/YouFaceInst/color.sh
#
# FUNCIONES
#
function YouFaceInst {
        sleep 0.5
        clear
python $HOME/YouFaceInst/fa.py 
echo -e "       \e[2;104m\e[1;77m NO SOY RESPONSABLE DEL MAL USO QUE LE DES AL SCRIPT \e[1;0m"
}
#
#
#INFO
info() {
python $HOME/YouFaceInst/fa.py
echo -e -n "\e[34mCUAL ES SU NOMBRE:\e[36m "
read nombre
clear
python $HOME/YouFaceInst/fa.py 
echo
echo -e "\e[32mHola \e[1m\e[31m$nombre\e[1;0m \e[32mespero y te funcione el script"
echo -e "\e[1;31m$nombre\e[1;0m \e[32m te pido por fabor  que sigas al canal de youtube\e[1;0m "
echo -e "\e[33m[\e[37mESTO PUEDE TARDAR UN POCO\e[33m]"
termux-open https://m.youtube.com/channel/UC6dDAfTu_h3SU8SxzSacVKg
sleep 17
}
info
clear
#
# CÓDIGO
#
YouFaceInst
echo -e -n ${verde}"
	          ESCRIBE EL ENLACE DE SU VIDEO
        	      QUE DESEA DESCARGAR

${amarillo}Ejemplo ${rojo}>>> ${blanco}https://m.youtube.com/hahsj

${rojo}[${banco}#${rojo}]${azul}+>> ${blanco}"
read -r Enlace

YouFaceInst
echo -e -n ${verde}"
		  ESCRIBIR UN NOMBRE PARA SU
		  (VIDEO/MÚSICA) A DESCARGAR

${amarillo}Ejemplo ${rojo}>>> ${blanco}Termux_video ${rojo}(Sin Espacios)

${rojo}[${banco}#${rojo}]${azul}+>> ${blanco}"
read -r Nombre

YouFaceInst
echo -e -n ${verde}"
		  ESCRIBIR LA RUTA QUE INDIQUE
		  DONDE SE DESCARGARÁ SU VIDEO

${amarillo}Ejemplo ${rojo}>>> ${blanco}/sdcard/Download

${rojo}[${banco}#${rojo}]${azul}+>> ${blanco}"
read -r Ruta

while :
do
YouFaceInst
echo -e -n ${verde}"
	       	 [SELECCIONAR OPCIÓN DE DESCARGA]

	     ${blanco}┌═════════════════════════════════════┐
	     ${blanco}█ ${amarillo}[${rojo}1${amarillo}]${rojo} | ${cyan}Video Completo (Todo)${rojo}  | ${amarillo}mp4${blanco}  █
	     ${blanco}█═════════════════════════════════════█
	     ${blnaco}█ ${amarillo}[${rojo}2${amarillo}]${rojo} | ${cyan}Solo Video (Sin Audio)${rojo} | ${amarillo}webm${blanco} █
	     ${blnaco}█═════════════════════════════════════█
	     ${blnaco}█ ${amarillo}[${rojo}3${amarillo}]${rojo} | ${cyan}Solo Audio (Sin Video)${rojo} | ${amarillo}m4a${blanco}  █
	     ${blnaco}█═════════════════════════════════════█
	     ${blanco}█ ${amarillo}[${rojo}4${amarillo}]${rojo} | ${cyan}Solo Audio (Sin Video)${rojo} | ${amarillo}mp3${blanco}  █
	     ${blanco}└═════════════════════════════════════┘

${rojo}[${banco}#${rojo}]${azul}+>> ${blanco}"
read -r opcion_descarga

[ "$opcion_descarga" == "1" ]||[ "$opcion_descarga" == "2" ]||[ "$opcion_descarga" == "3" ]||[ "$opcion_descarga" == "4" ] && break

echo -e ${rojo}"
¡OPCIÓN INCORRECTA!
"
sleep 1.5
clear
done

case $opcion_descarga in
1)
YouFaceInst
echo -e "
${rojo}[${amarillo}√${rojo}]${verde} Descargando Video Completo...
"${blanco}
youtube-dl -f mp4 $Enlace -o $Ruta/$Nombre.mp4 > /dev/null 2>&1
YouFaceInst
echo -e ${azul}"
VIDEO COMPLETO DESCARGADO CORRECTAMENTE
EN LA RUTA >>>${blanco} $Ruta ${azul}
CON EL NOMBRE DE >>>${blanco} $Nombre.mp4
"${blanco}
;;
2)
YouFaceInst
echo -e "
${rojo}[${amarillo}√${rojo}]${verde} Descargando Video (Sin Audio)...
"${blanco}
youtube-dl -f webm $Enlace -o $Ruta/$Nombre.webm > /dev/null 2>&1
YouTube
echo -e ${azul}"
VIDEO (SIN AUDIO) DESCARGADO CORRECTAMENTE
EN LA RUTA >>>${blanco} $Ruta ${azul}
CON EL NOMBRE DE >>>${blanco} $Nombre.webm
"${blanco}
;;
3)
YouFaceInst
echo -e "
${rojo}[${amarillo}√${rojo}]${verde} Descargando Audio (Sin Video)...
"${blanco}
youtube-dl -f m4a $Enlace -o $Ruta/$Nombre.m4a > /dev/null 2>&1
YouFaceInst
echo -e ${azul}"
AUDIO (SIN VIDEO) DESCARGADO CORRECTAMENTE
EN LA RUTA >>>${blanco} $Ruta ${azul}
CON EL NOMBRE DE >>>${blanco} $Nombre.m4a
"${blanco}
;;
4)
YouFaceInst
echo -e "
${rojo}[${amarillo}√${rojo}]${verde} Descargando Audio (Sin Video)...
"${blanco}
youtube-dl --extract-audio --audio-format mp3 $Enlace -o $Ruta/$Nombre.mp3 > /dev/null 2>&1
YouFaceInst
echo -e ${azul}"
AUDIO (SIN VIDEO) DESCARGADO CORRECTAMENTE
EN LA RUTA >>>${blanco} $Ruta ${azul}
CON EL NOMBRE DE >>>${blanco} $Nombre.mp3
"${blanco}
esac

while :
do
echo -e -n "${verde}
		¿QUIERE DESCARGAR OTRO (VIDEO/AUDIO)?

			${blanco}┌══════════════┐
			${blanco}█ ${amarillo}[${rojo}1${amarillo}]${rojo} |${cyan}   SI${blanco}   █
			${blanco}█══════════════█
			${blnaco}█ ${amarillo}[${rojo}2${amarillo}]${rojo} |${cyan}   NO${blanco}   █
			${blanco}└══════════════┘

${rojo}[${banco}#${rojo}]${azul}+>>  ${blanco}"
read -r opcion_reiniciar

[ "$opcion_reiniciar" == "1" ]||[ "$opcion_reiniciar" == "2" ] && break

echo -e ${rojo}"
¡OPCIÓN INCORRECTA!
"
sleep 1
YouFaceInst
done

case $opcion_reiniciar in
1)
clear
source $HOME/YouFaceInst/YouFacInst.sh
;;
2)
echo -e ${verde}"
PARA USAR NUEVAMENTE LA HERRAMIENTA
EJECUTE EL COMANDO ${amarillo}>>> ${rojo}./YouFacInst.sh
${blanco}MAS INFORMACION AL ${verde}WATSAPP ${blanco}+56937760516
"${blanco}
esac
