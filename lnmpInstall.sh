#! /bin/bash

if [ file != "$(type -t yum)"]
then
    echo "start install docker-lnmp..."
    #install docker
    if [ file != "$(type -t docker)" ]; then
        echo "start install docker"
        curl -sSL https://get.daocloud.io/docker | sh
        echo "start install success"
        curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://aba6a4d4.m.daocloud.io
    fi
    #install docker-compose
    if [ file != "$(type -t pip)"]; then
          yum install pip
          echo "install pip success"
    fi
    if [ file != "$(type -t docker-compose)" ]; then
       #install docker-compose by pip
       pip install docker-compose
       echo "install docker-compose success"
    fi
    docker-compose up -d
elif [ file != "$(type -t apt)"]
then
    echo "start install docker-lnmp..."
    #install docker
    if [ file != "$(type -t docker)" ]; then
        echo "start install docker"
        curl -sSL https://get.daocloud.io/docker | sh
        echo "start install success"
        curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://aba6a4d4.m.daocloud.io
    fi
    #install docker-compose
    if [ file != "$(type -t pip)"]; then
          apt install pip
          echo "install pip success"
    fi
    if [ file != "$(type -t docker-compose)" ]; then
       #install docker-compose by pip
       apt install docker-compose
       echo "install docker-compose success"
    fi
    docker-compose up -d
else
    echo "Only Support Centos Or Ubuntu"


