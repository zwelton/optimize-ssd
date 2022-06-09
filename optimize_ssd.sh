#!/bin/bash

echo start
sudo apt-get update
sudo apt-get install util-linux -y
sudo systemctl enable fstrim.service
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.service
sudo systemctl start fstrim.timer
echo done
