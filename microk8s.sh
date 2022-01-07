#!/bin/bash

sudo snap install microk8s --classic --channel=1.22/stable
sudo usermod -a -G microk8s vagrant
sudo chown -f -R vagrant ~/.kube
newgrp microk8s
