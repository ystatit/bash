#!/bin/bash
sudo timedatectl set-timezone Asia/Taipei
sudo sh -c "echo color koehler >> /etc/vimrc"
echo "PS1='\[\e[01;36m\]\u\[\e[01;37m\]@\[\e[01;33m\]\H\[\e[01;37m\]:\[\e[01;32m\]\w\[\e[01;37m\]\\$\[\033[0;37m\] '" | sudo tee -a /etc/bashrc
echo 'HISTTIMEFORMAT="%F %T "' | sudo tee -a /etc/bashrc
sudo sh -c "echo HISTFILESIZE=5000 >> /etc/bashrc"
sudo sh -c "echo HISTSIZE=5000 >> /etc/bashrc"
