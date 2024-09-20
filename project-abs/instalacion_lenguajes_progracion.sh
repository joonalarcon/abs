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

install_csharp() {
    echo "Instalando .NET SDK para C#..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install -y dotnet-sdk-6.0
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        sudo dnf install dotnet-sdk-6.0 -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        sudo yum install dotnet-sdk-6.0 -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        sudo pacman -S dotnet-sdk --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible para instalar C#."
        return 1
    fi

    echo ".NET SDK para C# instalado correctamente."
}


install_gpp() {
    # Implementar función de instalación de C++ aquí
    echo "Función de instalación de C++ no implementada."
}

install_java() {
    # Implementar función de instalación de Java aquí
    echo "Función de instalación de Java no implementada."
}

install_go() {
    # Implementar función de instalación de Golang aquí
    echo "Función de instalación de Golang no implementada."
}

install_node() {
    # Implementar función de instalación de Node.js aquí
    echo "Función de instalación de Node.js no implementada."
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
    # Implementar función de instalación de Swift aquí
    echo "Función de instalación de Swift no implementada."
}

# Menú principal
while true; do
    echo "Elija una opción:"
    echo "1) C"
    echo "2) C#"
    echo "3) C++"
    echo "4) Golang"
    echo "5) Java"
    echo "6) Node.js"
    echo "7) R"
    echo "8) Ruby"
    echo "9) Swift"
    echo "10) Salir"
    echo "0) Volver al menú principal"
    
    read -p "Ingrese una opción: " option

    case "$option" in
        1) install_gcc
            ;;
        2) install_csharp
            ;;
        3) install_gpp
            ;;
        4) install_go
            ;;
        5) install_java
            ;;
        6) install_node
            ;;
        7) install_r
            ;;
        8) install_ruby
            ;;
        9) install_swift
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
