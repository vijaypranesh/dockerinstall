#!/bin/bash
dnf -f install dnf-plugins-core
dnf -f config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf -f install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable --now docker
docker run hello-world
