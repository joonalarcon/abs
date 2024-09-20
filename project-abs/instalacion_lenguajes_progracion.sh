#!/bin/bash

echo "Instalación de lenguajes de programación"

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
    echo "0) Volver al menu principal"
    
    read -p "Ingrese una opción: " option

    case "$option" in
        1) install_gcc
            ;;
        2) 
            echo "Instalando .NET SDK para C#..."
            sudo apt update
            sudo apt install -y dotnet-sdk-6.0
            echo "C# (.NET SDK) instalado."
            ;;
    
        3)  install_gpp # funcion de instalaciòn de C++
            ;;
        4) 
            echo "Instalando Golang..."
            sudo apt update
            sudo apt install golang -y
            echo "Golang instalado."
            ;;

        5)  install_java # funcion de instalaciòn de java
            ;;
        
        6) 
            echo "Instalando Node.js..."
            sudo apt update
            sudo apt install nodejs npm -y
            echo "Node.js instalado."
            ;;
        7) 
            echo "Instalando R..."
            sudo apt update
            sudo apt install r-base -y
            echo "R instalado."
            ;;
        8) 
            echo "Instalando Ruby..."
            sudo apt update
            sudo apt install ruby-full -y
            echo "Ruby instalado."
            ;;
        9) 
            echo "Instalando Swift..."
            sudo apt update
            sudo apt install swift -y
            echo "Swift instalado."
            ;;
        10) 
            echo "Saliendo..."
            exit 0
            ;;
        0)  
            echo "Volviendo al menú principal"
            source ./main.sh
            ;;
        *) 
            echo "Opción no válida, intenta nuevamente."
            ;;
    esac
done

#Instalaciòn de lenguaje C
install_gcc() {
    echo "Instalando compilador de C..."
    
    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install gcc -y
    
    # Alpine Linux
    elif command -v apk >/dev/null; then
        sudo apk update
        sudo apk add gcc
    
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

#Instalacion de lenguaje C++
install_gpp() {
    echo "Instalando compilador de C++..."
    
    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install g++ -y
    
    # Alpine Linux
    elif command -v apk >/dev/null; then
        sudo apk update
        sudo apk add g++
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        sudo dnf install gcc-c++ -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        sudo yum install gcc-c++ -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu gcc --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "Compilador de C++ instalado correctamente."
}


# Instalación de Java
install_java() {
    echo "Instalando Java..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install default-jdk -y
    
    # Alpine Linux
    elif command -v apk >/dev/null; then
        sudo apk update
        sudo apk add openjdk11
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        sudo dnf install java-11-openjdk -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        sudo yum install java-11-openjdk -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu jdk11-openjdk --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "Java instalado correctamente."
}
