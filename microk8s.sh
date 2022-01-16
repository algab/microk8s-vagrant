#!/bin/bash

sudo echo 192.168.0.10 server01 >> /etc/hosts
sudo echo 192.168.0.11 server02 >> /etc/hosts
sudo snap install microk8s --classic --channel=1.22/stable
sudo usermod -a -G microk8s vagrant
sudo chown -f -R vagrant ~/.kube
newgrp microk8s
