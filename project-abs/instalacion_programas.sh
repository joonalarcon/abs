#!/bin/bash

echo "Gestor de paquetes"

while true; do
    echo "Elija una opción:"
    echo "1) Actualizar lista de paquetes (update)"
    echo "2) Actualizar paquetes (upgrade)"
    echo "3) Instalar neofetch"
    echo "10) Salir"
    echo "0) Volver al menu principal"
    read -p "Ingrese una opción: " option

    case "$option" in
        1) 
            echo "Actualizando lista de paquetes..."
            sudo apt update
            echo "Lista de paquetes actualizada."
            ;;
        2) 
            echo "Actualizando paquetes..."
            sudo apt upgrade -y
            echo "Paquetes actualizados."
            ;;
        3) 
            echo "Instalando neofetch..."
            sudo apt install neofetch -y
            echo "neofetch instalado."
            ;;
        10) 
            echo "Saliendo..."
            exit 0
            ;;

        0)  echo "Menu principal"
            source ./main.sh 
            ;; 
        *) 
            echo "Opción no válida, intenta nuevamente."
            ;;
    esac
done

