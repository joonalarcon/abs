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
        1) 
            echo "Instalando compilador de C..."
            sudo apt update
            sudo apt install gcc -y
            echo "Compilador de C instalado."
            ;;
        2) 
            echo "Instalando .NET SDK para C#..."
            sudo apt update
            sudo apt install -y dotnet-sdk-6.0
            echo "C# (.NET SDK) instalado."
            ;;
        3) 
            echo "Instalando compilador de C++..."
            sudo apt update
            sudo apt install g++ -y
            echo "Compilador de C++ instalado."
            ;;
        4) 
            echo "Instalando Golang..."
            sudo apt update
            sudo apt install golang -y
            echo "Golang instalado."
            ;;
        5) 
            echo "Instalando Java..."
            sudo apt update
            sudo apt install default-jdk -y
            echo "Java instalado."
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

