#!/bin/bash

# Definición de funciones
install_gcc() {
    echo "Instalando compilador de C..."
    
    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install gcc -y
        
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        sudo dnf install gcc -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        sudo yum install gcc -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu gcc --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "Compilador de C instalado correctamente."
}

install_java() {
    echo "Instalando Java (OpenJDK)..."

    # Comprobamos si estamos en un sistema basado en Ubuntu o Debian
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install default-jdk -y
    # Comprobamos si estamos en un sistema basado en Fedora o CentOS
    elif command -v dnf >/dev/null || command -v yum >/dev/null; then
        if command -v dnf >/dev/null; then
            package_manager="dnf"
        else
            package_manager="yum"
        fi
        sudo $package_manager install java-11-openjdk-devel -y  # Puedes cambiar 11 por la versión deseada
    # Comprobamos si estamos en un sistema basado en Arch Linux
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu java-openjdk --noconfirm
    # Para otras distribuciones, recomendamos consultar la documentación oficial
    else
        echo "No se pudo detectar el gestor de paquetes compatible. Consulta la documentación de tu distribución para obtener instrucciones específicas."
        return 1
    fi

    echo "Java instalado correctamente."
}

install_go() {
    # Implementar función de instalación de Golang aquí
    echo "Función de instalación de Golang no implementada."
}

install_node() {
    echo "Instalando Node.js..."

    # Comprobamos si estamos en un sistema basado en Debian o Ubuntu
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install nodejs -y
    # Comprobamos si estamos en un sistema basado en Fedora o CentOS
    elif command -v dnf >/dev/null || command -v yum >/dev/null; then
        if command -v dnf >/dev/null; then
            package_manager="dnf"
        else
            package_manager="yum"
        fi
        sudo $package_manager install nodejs -y
    # Comprobamos si estamos en un sistema basado en Arch Linux
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu nodejs --noconfirm
    # Para otras distribuciones, recomendamos consultar la documentación oficial
    else
        echo "No se pudo detectar el gestor de paquetes compatible. Consulta la documentación de tu distribución para obtener instrucciones específicas."
        return 1
    fi

    echo "Node.js instalado correctamente."
}

install_r() {
    # Implementar función de instalación de R aquí
    echo "Función de instalación de R no implementada."
}

install_ruby() {
    # Implementar función de instalación de Ruby aquí
    echo "Función de instalación de Ruby no implementada."
}

install_swift() {
    echo "Instalando Swift..."

    # Comprobamos si estamos en un sistema basado en Ubuntu o Debian
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install swift -y
    # Comprobamos si estamos en un sistema basado en Fedora o CentOS
    elif command -v dnf >/dev/null || command -v yum >/dev/null; then
        if command -v dnf >/dev/null; then
            package_manager="dnf"
        else
            package_manager="yum"
        fi
        sudo $package_manager install swift -y
    # Comprobamos si estamos en un sistema basado en Arch Linux
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu swift --noconfirm
    # Para otras distribuciones, recomendamos instalar Swift desde los paquetes oficiales
    else
        echo "No se pudo detectar el gestor de paquetes compatible. Consulta la documentación oficial de Swift para obtener instrucciones específicas de instalación: https://swift.org/install/"
        return 1
    fi

    echo "Swift instalado correctamente."
}

# Menú principal
while true; do
    echo "Elija una opción:"
    echo "1) C"
    echo "2) Golang"
    echo "3) Java"
    echo "4) Node.js"
    echo "5) R"
    echo "6) Ruby"
    echo "7) Swift"
    echo "10) Salir"
    echo "0) Volver al menú principal"
    
    read -p "Ingrese una opción: " option

    case "$option" in
        1) install_gcc
            ;;
        2) install_go
            ;;
        3) install_java
            ;;
        4) install_node
            ;;
        5) install_r
            ;;
        6) install_ruby
            ;;
        7) install_swift
            ;;
        10) 
            echo "Saliendo..."
            exit 0
            ;;
        0)  
            echo "Volviendo al menú principal"
            ./main.sh
            ;;
        *) 
            echo "Opción no válida, intenta nuevamente."
            ;;
    esac
done
