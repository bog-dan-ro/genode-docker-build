FROM debian:trixie
ENV DEBIAN_FRONTEND=noninteractive


RUN apt update && \
    apt install -y acpica-tools autoconf autoconf2.69 autogen automake bash bash-completion \
        bc binutils-dev bison build-essential byacc ccache cmake cpio curl \
        dosfstools e2tools ed expect flex gawk gdisk git gnat \
        libc-dev-bin libcurl4-openssl-dev libelf-dev libexpat1-dev libfontconfig1 libglib2.0-dev libgmp-dev \
        libncurses-dev libpixman-1-dev libsdl2-dev libslirp-dev libsoap-lite-perl libtool libxml2-utils libxml2-dev \
        lighttpd lynx mawk mtools ninja-build ovmf patch picocom pip pkg-config \
        python3-minimal python3-venv socat tcl telnet texinfo tidy u-boot-tools unzip vim \
        wget xorriso xsltproc xz-utils yasm mc && \
    apt clean

ADD https://github.com/genodelabs/genode/releases/download/25.05/genode-toolchain-25.05-debian-12.10.tar.xz /
RUN tar xfa genode-toolchain-25.05-debian-12.10.tar.xz && rm genode-toolchain-25.05-debian-12.10.tar.xz
ADD build_genode.sh /
CMD ["bash"]
