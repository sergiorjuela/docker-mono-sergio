# Este archivo realiza la creación de un contenedor en ubuntu e instala mono, esto a fin de agiliar el proceso de generación de documentación
FROM catthehacker/ubuntu:act-latest

RUN apt install gnupg ca-certificates \
  && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
  && echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list \
  && apt update \
  && apt install -y mono-devel
