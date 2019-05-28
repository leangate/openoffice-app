FROM leangate/app-base

RUN apt update && apt install default-jdk -y

RUN wget https://datapacket.dl.sourceforge.net/project/openofficeorg.mirror/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz
RUN tar xzf Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US.tar.gz

RUN dpkg -i Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US/*.deb
RUN dpkg -i Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_en-US/desktop-integration/*.deb
