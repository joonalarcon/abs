#!/bin/bash

# Definir variables de color
rojo="\033[0;31m"
verde="\033[0;32m"
amarillo="\033[0;33m"
azul="\033[0;34m"
magenta="\033[0;35m"
cian="\033[0;36m"
blanco="\033[0;37m"
reset="\033[0m"  # Para resetear el color

echo -e "${cian}Bienvenido -- JoonalarconDev${reset} "
echo -e "${rojo}--Swissknife--${reset}"
while true; do
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${verde}1) Instalación de programas"
    echo "2) Instalaciòn de lenguajes de programación"
    echo "3) Administración de usuarios"
    echo "4) Personalización de terminal"
    echo "5) Instalación de bases de datos"
    echo -e "5) Salir del programa${verde}"
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${amarillo}----------------------------${reset}"

    read -p "Ingrese una opcion: " option

    case "$option" in
        1) 
            echo "Instalación de programas"
            clear
            source ./instalacion_programas.sh
            break
            ;;
        2) 
            echo "Instalación de lenguajes de programación"
            source ./instalacion_lenguajes_progracion.sh
            break
            ;;
        3) 
            echo "Administración de usuarios"
            break
            ;;
            
        4)  echo "Personalización de terminal"
            source ./personalizacion_terminal.sh
            break 
            ;;

        5)  echo "Instalación de bases de datos"
            source ./instalacion_bases_datos.sh
            ;;

        0)  echo "Saliendo..."
            exit 0
            ;;
        *) 
            echo "Opcion no valida, intenta nuevamente"
            
            exec "$0"
            ;;
    esac
done


