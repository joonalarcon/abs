#!/bin/bash

echo "Hola"

install_mysql() {
    echo "Instalando MySQL..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        echo "Instalando MySQL en Ubuntu/Debian/Kali..."
        sudo apt update
        sudo apt install mysql-server -y
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        echo "Instalando MySQL en Fedora..."
        sudo dnf install mysql-server -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Instalando MySQL en CentOS..."
        sudo yum install mysql-server -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Instalando MySQL en Arch Linux..."
        sudo pacman -S mysql --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "MySQL instalado correctamente."
}


install_mysql