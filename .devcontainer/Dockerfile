FROM ghcr.io/lnis-uofu/openfpga-master:latest

USER root

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:1
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    sudo ca-certificates curl wget git git-lfs unzip file make \
    python3 python3-pip python3-numpy \
    tcl tcl-dev tcllib tcl-tclreadline tk \
    build-essential flex bison gawk perl time bc \
    libreadline8 libtcl8.6 libtk8.6 zlib1g \
    libstdc++6 libgcc-s1 libyaml-cpp0.7 libqt5charts5 \
    xvfb xfce4 xfce4-session xfce4-panel xfdesktop4 xfwm4 x11-xserver-utils \
    xfce4-terminal thunar dbus-x11 \
    x11vnc novnc websockify supervisor \
    magic ngspice gtkwave verilator iverilog \
    locales vim ripgrep \
 && locale-gen en_US.UTF-8 \
 && rm -rf /var/lib/apt/lists/*

RUN set -eux; \
    curl -fL \
      https://www.klayout.org/downloads/Ubuntu-22/klayout_0.30.9-1_amd64.deb \
      -o /tmp/klayout.deb; \
    apt-get update; \
    apt-get install -y --no-install-recommends /tmp/klayout.deb; \
    rm -rf /var/lib/apt/lists/* /tmp/klayout.deb

RUN set -eux; \
    curl -fL \
      https://github.com/YosysHQ/oss-cad-suite-build/releases/download/2025-10-31/oss-cad-suite-linux-x64-20251031.tgz \
      -o /tmp/oss-cad.tgz; \
    mkdir -p /opt; \
    tar -xzf /tmp/oss-cad.tgz -C /opt; \
    rm /tmp/oss-cad.tgz

RUN mkdir -p /etc/sudoers.d && echo 'openfpga_user ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/openfpga_user && chmod 0440 /etc/sudoers.d/openfpga_user

COPY install-openroad.sh /tmp/install-openroad.sh
RUN chmod +x /tmp/install-openroad.sh \
 && /tmp/install-openroad.sh \
 && rm /tmp/install-openroad.sh

RUN mkdir -p /tmp/orfs \
 && chmod 1777 /tmp/orfs \
 && test -x /opt/openfpga/build/openfpga/openfpga \
 && test -x /opt/openfpga/build/vtr-verilog-to-routing/vpr/vpr \
 && test -x /opt/oss-cad-suite/bin/yosys \
 && openroad -version \
 && /opt/oss-cad-suite/bin/yosys -V \
 && klayout -v

COPY start-xfce.sh /usr/local/bin/start-cp8d-xfce
RUN chmod 755 /usr/local/bin/start-cp8d-xfce

COPY supervisord.conf /etc/supervisor/conf.d/vnc.conf

EXPOSE 6080
CMD ["/usr/bin/supervisord", "-n"]
