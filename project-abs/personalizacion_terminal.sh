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

echo -e "${cian}Bienvenido -- Personalizador de Terminal${reset} "
echo -e "${rojo}--TerminalCustomizer--${reset}"
while true; do
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${verde}1) Cambiar el tema de tmux"
    echo "2) Modificar .zshrc para Oh My Zsh"
    echo "3) Cambiar el prompt de la terminal"
    echo "4) Configurar alias de comandos"
    echo "5) Editar el archivo de configuración de bash"
    echo -e "0) Salir del programa${verde}"
    echo -e "${amarillo}----------------------------${reset}"
    echo -e "${amarillo}----------------------------${reset}"

    read -p "Ingrese una opción: " option

    case "$option" in
        1) 
            echo "Cambiando el tema de tmux..."
            # Aquí debes agregar el comando o script para cambiar el tema de tmux
            ;;
        2) 
            echo "Modificando .zshrc para Oh My Zsh..."
            # Aquí debes agregar el comando o script para modificar .zshrc
            ;;
        3) 
            echo "Cambiando el prompt de la terminal..."
            # Aquí debes agregar el comando o script para cambiar el prompt
            ;;
        4) 
            echo "Configurando alias de comandos..."
            # Aquí debes agregar el comando o script para configurar alias
            ;;
        5) 
            echo "Editando el archivo de configuración de bash..."
            # Aquí debes agregar el comando o script para editar el archivo de configuración de bash
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



