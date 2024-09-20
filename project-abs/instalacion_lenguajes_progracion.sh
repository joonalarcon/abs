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
    echo "Instalando Go (Golang)..."
    
    # URL del archivo de instalación para la versión 1.23.1 de Go
    GO_VERSION="1.23.1"
    GO_TAR="go${GO_VERSION}.linux-amd64.tar.gz"
    GO_URL="https://go.dev/dl/${GO_TAR}"
    
    # Ruta de instalación
    GO_INSTALL_PATH="/usr/local/go"
    
    # Descargar el archivo de Go
    echo "Descargando Go desde ${GO_URL}..."
    curl -LO $GO_URL
    
    # Verificar si el archivo se descargó correctamente
    if [ ! -f $GO_TAR ]; then
        echo "Error: No se pudo descargar el archivo ${GO_TAR}."
        return 1
    fi
    
    # Extraer el archivo
    echo "Extrayendo ${GO_TAR}..."
    sudo tar -C /usr/local -xzf $GO_TAR
    
    # Eliminar el archivo tar después de la extracción
    rm $GO_TAR
    
    # Configurar el entorno
    echo "Configurando el entorno..."
    
    # Crear o actualizar el archivo de perfil
    PROFILE_FILE="/etc/profile.d/golang.sh"
    if [ ! -f $PROFILE_FILE ]; then
        echo "Creando archivo de perfil ${PROFILE_FILE}..."
        echo "export PATH=\$PATH:/usr/local/go/bin" | sudo tee $PROFILE_FILE > /dev/null
    else
        echo "El archivo de perfil ya existe. Asegúrate de que contenga: export PATH=\$PATH:/usr/local/go/bin"
    fi

    # Configurar el PATH para la sesión actual
    export PATH=$PATH:/usr/local/go/bin
    
    # Aplicar los cambios del perfil
    source /etc/profile.d/golang.sh
    
    # Verificar la instalación de Go
    echo "Verificando la instalación de Go..."
    if ! command -v go >/dev/null; then
        echo "No se pudo encontrar el comando 'go'."
        echo "Asegúrate de que el PATH está correctamente configurado y vuelve a intentar."
        return 1
    fi
    
    # Mostrar la versión de Go para verificar la instalación
    go version
    echo "Go (Golang) instalado correctamente."
    echo "DEBES INGRESAR ESTO EN LA TERMINAL --> source /etc/profile.d/golang.sh  <--- PARA UNA CORRECTA INSTALACIÒN"
    
}














install_node() {
    echo "Instalando Node.js..."
    
    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        # Añadir el repositorio NodeSource
        curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
        sudo apt update
        sudo apt install nodejs -y
        
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        # Añadir el repositorio NodeSource
        curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
        sudo dnf install nodejs -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        # Añadir el repositorio NodeSource
        curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
        sudo yum install nodejs -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu nodejs npm --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
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

install_python() {
    echo "Instalando Python..."

    # Ubuntu, Debian, Kali y distribuciones basadas en APT
    if command -v apt >/dev/null; then
        sudo apt update
        sudo apt install -y python3 python3-pip
    
    # Fedora y otras distribuciones basadas en DNF
    elif command -v dnf >/dev/null; then
        sudo dnf install python3 python3-pip -y
    
    # CentOS y distribuciones basadas en YUM
    elif command -v yum >/dev/null; then
        sudo yum install python3 python3-pip -y
    
    # Arch Linux y distribuciones basadas en Pacman
    elif command -v pacman >/dev/null; then
        sudo pacman -Syu python python-pip --noconfirm
    
    # Si no se detecta ningún gestor de paquetes compatible
    else
        echo "No se pudo detectar el gestor de paquetes compatible."
        return 1
    fi

    echo "Python instalado correctamente."
}
install_rust() {
    echo "Instalando Rust..."

    # Descargar el script de instalación de rustup
    echo "Descargando el script de instalación de Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    
    # Configurar el entorno para el usuario actual
    echo "Configurando el entorno..."

    # Determinar el archivo de perfil adecuado según el shell
    if [ -f "$HOME/.bashrc" ]; then
        PROFILE_FILE="$HOME/.bashrc"
    elif [ -f "$HOME/.zshrc" ]; then
        PROFILE_FILE="$HOME/.zshrc"
    elif [ -f "$HOME/.profile" ]; then
        PROFILE_FILE="$HOME/.profile"
    else
        PROFILE_FILE="$HOME/.profile" # Por defecto si no se encuentra otro
    fi

    # Añadir el directorio de Cargo al PATH si no está ya añadido
    if ! grep -q 'export PATH="$HOME/.cargo/bin:$PATH"' "$PROFILE_FILE"; then
        echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> "$PROFILE_FILE"
    fi
    
    # Aplicar los cambios del perfil en la sesión actual
    source "$PROFILE_FILE"
    
    # Verificar la instalación de Rust
    echo "Verificando la instalación de Rust..."
    if ! command -v rustc >/dev/null; then
        echo "NO SE PUDO ENCONTRAR EL COMANDO 'rustc'."
        echo "ES POSIBLE QUE NECESITES REINICIAR LA TERMINAL O CERRAR Y VOLVER A ABRIR LA SESIÓN PARA QUE LOS CAMBIOS EN EL PATH SURTAN EFECTO."
        echo "TAMBIÉN PUEDES INTENTAR APLICAR MANUALMENTE LOS CAMBIOS EN LA SESIÓN ACTUAL CON UNO DE LOS SIGUIENTES COMANDOS:"
        echo "  source ~/.bashrc  # SI USAS BASH"
        echo "  source ~/.zshrc   # SI USAS ZSH"
        echo "  source ~/.profile # SI USAS OTRO SHELL"
        echo "DESPUÉS DE APLICAR LOS CAMBIOS, VERIFICA LA INSTALACIÓN DE RUST CON:"
        echo "  rustc --version"
        return 1
    fi

    # Mostrar la versión de Rust para verificar la instalación
    rustc --version
    
    echo "Rust instalado correctamente."
}








# Ejecutar la función



# Menú principal
while true; do
    echo "Elija una opción:"
    echo "1) C READY"
    echo "2) Golang REDY"
    echo "3) Java"
    echo "4) Node.js READY"
    echo "5) R"
    echo "6) Ruby"
    echo "7) Python3 READY"
    echo "8) Rust"
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
        7) install_python
            ;;
        8) install_rust
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
