# Usa una imagen base de Ubuntu
FROM ubuntu:22.04

# Actualiza el sistema e instala sudo y git
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y sudo git neovim nano neofetch curl wget

# Configura el contenedor para que ejecute bash de manera interactiva
CMD ["/bin/bash"]

