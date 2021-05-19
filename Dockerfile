FROM fedora:34

RUN dnf update -y && dnf install git -y

RUN curl -sfL -o /tmp/helm-v3.5.4-linux-amd64.tar.gz https://get.helm.sh/helm-v3.5.4-linux-amd64.tar.gz && \
mkdir -p /opt/helm && \
tar -xf /tmp/helm-v3.5.4-linux-amd64.tar.gz --directory /opt/helm && \
ln -s /opt/helm/linux-amd64/helm /usr/bin/helm

RUN pip3 install git+git://github.com/fairwindsops/reckoner.git@e477af228d04968ed64e2ccce6e943172ffd654f