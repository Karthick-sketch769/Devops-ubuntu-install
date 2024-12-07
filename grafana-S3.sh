#!/bin/bash
wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_5.0.4_amd64.deb
sudo apt-get install -y adduser libfontconfig
sudo dpkg -i grafana_5.0.4_amd64.deb

sudo systemctl daemon-reload 
sudo systemctl enable grafana-server 
sudo systemctl start grafana-server.service
