#!/bin/bash

echo "Gestor de paquetes"

update_system() {
    echo "Detectando el gestor de paquetes para actualizar el sistema..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        echo "Actualizando Ubuntu/Debian/Kali..."
        sudo apt update
        sudo apt upgrade -y
        sudo apt dist-upgrade -y
        sudo apt autoremove -y
        
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        echo "Actualizando Fedora..."
        sudo dnf update -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Actualizando CentOS..."
        sudo yum update -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Actualizando Arch Linux..."
        sudo pacman -Syu --noconfirm
    

    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "Actualización del sistema completada."
}


upgrade_system() {
    echo "Detectando el gestor de paquetes para actualizar el sistema..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        echo "Actualizando paquetes en Ubuntu/Debian/Kali..."
        sudo apt update
        sudo apt upgrade -y
        # La actualización de distribución se omite aquí
        # sudo apt dist-upgrade -y
        # La limpieza de paquetes obsoletos se omite aquí
        # sudo apt autoremove -y
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        echo "Actualizando paquetes en Fedora..."
        sudo dnf upgrade -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Actualizando paquetes en CentOS..."
        sudo yum update -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Actualizando paquetes en Arch Linux..."
        sudo pacman -Syu --noconfirm

    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "Actualización de paquetes completada."
}

install_neofetch() {
    echo "Instalando neofetch..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        echo "Instalando neofetch en Ubuntu/Debian/Kali..."
        sudo apt update
        sudo apt install neofetch -y
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        echo "Instalando neofetch en Fedora..."
        sudo dnf install neofetch -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Instalando neofetch en CentOS..."
        sudo yum install epel-release -y
        sudo yum install neofetch -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Instalando neofetch en Arch Linux..."
        sudo pacman -S neofetch --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "neofetch instalado correctamente."
}

install_htop() {
    echo "Instalando htop..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        echo "Instalando htop en Ubuntu/Debian/Kali..."
        sudo apt update
        sudo apt install htop -y
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        echo "Instalando htop en Fedora..."
        sudo dnf install htop -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Instalando htop en CentOS..."
        sudo yum install htop -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Instalando htop en Arch Linux..."
        sudo pacman -S htop --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "htop instalado correctamente."
}

install_cmatrix() {
    echo "Instalando cmatrix..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        echo "Instalando cmatrix en Ubuntu/Debian/Kali..."
        sudo apt update
        sudo apt install cmatrix -y
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        echo "Instalando cmatrix en Fedora..."
        sudo dnf install cmatrix -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Instalando cmatrix en CentOS..."
        sudo yum install epel-release -y
        sudo yum install cmatrix -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Instalando cmatrix en Arch Linux..."
        sudo pacman -S cmatrix --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "cmatrix instalado correctamente."
}

install_vscode() {
    echo "Instalando Visual Studio Code..."

    # Ubuntu y Debian
    if command -v apt >/dev/null; then
        echo "Instalando Visual Studio Code en Ubuntu/Debian..."
        # Descargar el paquete DEB
        curl -L https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -o vscode.deb
        sudo apt update
        sudo apt install ./vscode.deb -y
        rm vscode.deb

    # Fedora y otras distribuciones basadas en RPM
    elif command -v dnf >/dev/null; then
        echo "Instalando Visual Studio Code en Fedora..."
        # Descargar el paquete RPM
        curl -L https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64 -o vscode.rpm
        sudo dnf install ./vscode.rpm -y
        rm vscode.rpm

    # CentOS y otras distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Instalando Visual Studio Code en CentOS..."
        # Descargar el paquete RPM
        curl -L https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64 -o vscode.rpm
        sudo yum install ./vscode.rpm -y
        rm vscode.rpm

    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Instalando Visual Studio Code en Arch Linux..."
        sudo pacman -Syu --noconfirm
        sudo pacman -S visual-studio-code-bin --noconfirm

    # openSUSE y otras distribuciones basadas en Zypper
    elif command -v zypper >/dev/null; then
        echo "Instalando Visual Studio Code en openSUSE..."
        # Descargar el paquete RPM
        curl -L https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64 -o vscode.rpm
        sudo zypper install ./vscode.rpm
        rm vscode.rpm

    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "Visual Studio Code instalado correctamente."
}

install_nmap() {
    echo "Instalando nmap..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        echo "Instalando nmap en Ubuntu/Debian/Kali..."
        sudo apt update
        sudo apt install nmap -y
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        echo "Instalando nmap en Fedora..."
        sudo dnf install nmap -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        echo "Instalando nmap en CentOS..."
        sudo yum install nmap -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        echo "Instalando nmap en Arch Linux..."
        sudo pacman -S nmap --noconfirm
    
    # openSUSE y otras distribuciones basadas en Zypper
    elif command -v zypper >/dev/null; then
        echo "Instalando nmap en openSUSE..."
        sudo zypper install nmap
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi
    
    echo "nmap instalado correctamente."
}








while true; do
    echo "Elija una opción:"
    echo "1) Actualizar lista de paquetes (update)"
    echo "2) Actualizar paquetes (upgrade)"
    echo "3) Instalar neofetch"
    echo "4) Instalaciòn de HTOP"
    echo "5) Instalaciòn de Cmatrix"
    echo "6) Instalaciòn de Vscode --> REVISAR"
    echo "7) Instalaciòn de Nmap"
    
    
    
    echo "10) Salir"
    echo "0) Volver al menu principal"
    read -p "Ingrese una opción: " option

    case "$option" in
        1)  update_system
            ;;

        2)  upgrade_system
            ;;

        3)  install_neofetch
            ;;
        
        4)  install_htop
            ;;

        5)  install_cmatrix
            ;;

        6) install_vscode
            ;;

        7) install_nmap
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

