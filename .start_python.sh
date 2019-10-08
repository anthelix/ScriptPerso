#!/bin/bash

# cd /sgoinfre/goinfre/Perso &&
# mkdir -p $USERNAME &&
# chmod 700 $USERNAME &&
# cd $USERNAME &&
# curl -o miniconda3.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh &&
# sh miniconda3.sh -b -p $pwd miniconda3 && 
# echo "" &&
# echo "à ajouter au .zshrc ou .bashrc: " &&
# echo "export PATH=\"/sgoinfre/goinfre/Perso/$USERNAME/miniconda3/bin:\$PATH\""
# source ~/.zshrc
# which python
# pip3 install --upgrade pip
# pip install jupyter
# pip install --upgrade numpy
# pip install keras tensorflow opencv-python

# Pour installer Python sur goinfre
# (il faudra le refaire sur chaque nouvelle machine, et a chque fois que goinfre est efface)

# use source, Luke!

# Python 3.7
VERSION=3
MINICONDA_PATH=/goinfre/miniconda3
SCRIPT=Miniconda3-latest-MacOSX-x86_64.sh

# Python 2.7
#VERSION=2
#MINICONDA_PATH=~/goinfre/miniconda
#SCRIPT=Miniconda2-latest-MacOSX-x86_64.sh

# pour faire une mise a jour au lieu d'une install from scratch:
#UPDATE=-u
#UPDATE_OP=mise a jour

echo
echo '-->' downloader intallateur Miniconda...
curl -LO http://repo.continuum.io/miniconda/$SCRIPT

echo
echo  '-->'$UPDATE_OP installation de Python $VERSION
sh $SCRIPT $UPDATE -b -p $MINICONDA_PATH
rm $SCRIPT

export PATH="$MINICONDA_PATH/bin:$PATH"

echo
echo Versions de Python et de pip:
which python
which pip
python -V
pip -V

echo
echo '-->' installer des modules avec pip...
#pip install -U django
pip install -U jupyter numpy pandas matplotlib
pip install -U scikit-learn seaborn
pip install keras tensorflow opencv-python glob3


# d'autres trucs utiles pour Kai et pour le ML
#alias ls='ls -F'
#export PS1='\w> '
#cd /sgoinfre/goinfre/Perso/rcarver/
echo 'start jupyter? (control-C to exit)'
read junk
jupyter notebook &