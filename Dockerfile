FROM fedora:34

RUN dnf update -y && dnf install git -y

RUN pip3 install git+git://github.com/fairwindsops/reckoner.git@e477af228d04968ed64e2ccce6e943172ffd654f