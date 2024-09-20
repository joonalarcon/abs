#!/bin/bash

echo "Bienvenido al menú de personalización de la terminal"

while true; do
    echo "Elija una opción:"
    echo "1) Instalar Zsh y establecer como shell predeterminado"
    echo "9) Volver al menú principal"
    echo "0) Salir del programa"
    read -p "Ingrese una opción: " option

    case "$option" in
        1)  echo "Instalando Zsh..."
            install_zsh            
            ;;
        
        2)  echo "Instalacion de OH My Zsh!"
            install_oh_my_zsh
            ;;

        9)  echo "Volviendo al menú principal"
            source ./main.sh
            ;;

        0)  echo "Saliendo"
            exit 0
            ;;

        *)  echo "Opción no válida, intenta nuevamente."
            ;;
    esac
done




# instalacion de zsh
install_zsh() {
    if command -v apt &>/dev/null; then
        sudo apt update
        sudo apt install -y zsh
    elif command -v yum &>/dev/null; then
        sudo yum install -y zsh
    elif command -v dnf &>/dev/null; then
        sudo dnf install -y zsh
    else
        echo "Gestor de paquetes no soportado."
        exit 1

    fi
}


# Instalacion de oh my Zsh
install_oh_my_zsh() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}


