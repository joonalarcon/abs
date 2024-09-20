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
    echo "1) Instalacion de programas"
    echo "2) Instalacion de lenguajes de programacion"
    echo "3) Administracion de usuarios"
    echo "4) Personalizacion de terminal"
    echo "5) Salir del programa"
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${amarillo}----------------------------${reset}"

    read -p "Ingrese una opcion: " option

    case "$option" in
        1) 
            echo "Instalacion de programas"
            source ./instalacion_programas.sh
            break
            ;;
        2) 
            echo "Instalacion de lenguajes de programacion"
            break
            ;;
        3) 
            echo "Administracion de usuarios"
            break
            ;;
            
        4)  echo "Personalizacion de terminal"
            source ./personalizacion_terminal.sh
            break 
            ;;

        0)  echo "Saliendo..."
            exit 0
            ;;
        *) 
            echo "Opcion no valida, intenta nuevamente"
            # Salir del bucle después de un solo intento
            exec "$0"
            ;;
    esac
done


