# Usa una imagen base de Arch Linux
FROM archlinux:latest

# Actualiza el sistema e instala sudo, git y curl
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm sudo git curl

# Configura el contenedor para que ejecute bash de manera interactiva
CMD ["/bin/bash"]

