FROM fedora:34

RUN dnf update -y && dnf install git -y

RUN pip3 install -Iv reckoner==4.3.2