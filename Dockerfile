FROM ayudadigital/duing:18.04

RUN apt-get -y update && \
    apt-get install -y openjdk-8-jdk maven docker.io

COPY intellij_install.sh /tmp
RUN /tmp/intellij_install.sh

# cd /home/ubuntu; tar -czf intellij_assets.tar.gz .config/ .gnome/ .local/
USER ubuntu
COPY intellij_assets.tar.gz /tmp
RUN tar -xvzf /tmp/intellij_assets.tar.gz -C /home/ubuntu
USER root
