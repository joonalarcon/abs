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

echo -e "${cian}Bienvenido -- Instalador de Bases de Datos${reset} "
echo -e "${rojo}--BaseDataInstaller--${reset}"
while true; do
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${verde}1) Instalar MySQL"
    echo "2) Instalar OracleSQL"
    echo "3) Instalar MongoDB"
    echo "4) Instalar PostgreSQL"
    echo "5) Instalar MariaDB"
    echo "10) Volver al menu principal"    
    echo -e "0) Salir del programa${verde}"

    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${amarillo}----------------------------${reset}"

    read -p "Ingrese una opción: " option

    case "$option" in
        1) 
            echo "Instalando MySQL..."
            # Aquí debes agregar el comando para instalar MySQL
            ;;
        2) 
            echo "Instalando OracleSQL..."
            # Aquí debes agregar el comando para instalar OracleSQL
            ;;
        3) 
            echo "Instalando MongoDB..."
            # Aquí debes agregar el comando para instalar MongoDB
            ;;
        4) 
            echo "Instalando PostgreSQL..."
            # Aquí debes agregar el comando para instalar PostgreSQL
            ;;
        5) 
            echo "Instalando MariaDB..."
            # Aquí debes agregar el comando para instalar MariaDB
            ;;
        0)  
            echo "Saliendo..."
            exit 0
            ;;

        10) source ./main.sh
            ;;
        *) 
            echo "Opción no válida, intenta nuevamente"
            ;;
    esac
done
