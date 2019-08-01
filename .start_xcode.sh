#!/bin/bash

rm -rf ~/Library/Developer
#  mkdir -p /goinfre/$LOGIN/Developer
# ln -s /goinfre/$LOGIN/Developer ~/Library/Developer
# xcrun simctl delete unavailable
# xcrun simctl erase all

# cd /Users/$LOGIN/goinfre
# cd /Users/$LOGIN/goinfre

# Python 3.7                                                
VERSION=3
MINICONDA_PATH=~/goinfre/miniconda3
SCRIPT=Miniconda3-latest-MacOSX-x86_64.sh

# Python 2.7                                                
#VERSION=2                                                  
#MINICONDA_PATH=~/goinfre/miniconda                         
#SCRIPT=Miniconda2-latest-MacOSX-x86_64.sh                  

# pour faire une mise a jour au lieu d'une install from scratch:                                                       
#UPDATE=-u                                                  
#UPDATE_OP=mise a jour                                      


echo
echo Versions de Python et de pip:
which pip
python -V
pip -V

if [[ $(which python) == "/Users/$LOGIN/goinfre/miniconda3/bin/python" ]]; then
	echo "Pyhton is already installed!"
	echo "--> Checking for updates..."
	conda update python
else
	echo "Installing Pyhton 3 locally..."
	echo "--> Downloader intallateur Miniconda..."
	curl -O http://repo.continuum.io/miniconda/$SCRIPT

	echo  "--> Installation de Python $VERSION"
	sh $SCRIPT $UPDATE -b -p $MINICONDA_PATH
	rm $SCRIPT

	export PATH="$MINICONDA_PATH/bin:$PATH"
fi

echo
echo '-->' installer des modules avec pip...
#pip install -U django                                      
pip install -U jupyter numpy pandas matplotlib
pip uninstall -v scikit-learn
pip install -Uv scikit-learn seaborn
pip install keras tensorflow opencv-python glob3
pip show scikit-learn
# clear

echo '-->' installer Spyder
cd ~/goinfre
conda install spyder
# conda remove spyder
conda install -c spyder-ide spyder-kernels=1.*
git clone https://github.com/spyder-ide/spyder.git
cd spyder
python bootstrap.py
conda install -c spyder-ide spyder-line-profiler

# d'autres trucs utiles pour Kai et pour le ML              
#alias ls='ls -F'                                           
#export PS1='\w> '                                          
#cd /sgoinfre/goinfre/Perso/rcarver/                        
echo 'start jupyter? (control-C to exit)'
read junk
jupyter notebook &



#cd /sgoinfre/goinfre/Perso &&
#mkdir -p $USERNAME &&
#chmod 700 $USERNAME &&

#cd $USERNAME &&
#curl -o miniconda3.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh &&
#sh miniconda3.sh -b -p $pwd miniconda3 && 

#echo "" &&
#echo "à ajouter au .zshrc ou .bashrc: " &&
#echo "export PATH="/sgoinfre/goinfre/Perso/$USERNAME/miniconda3/bin:$PATH" "
#pip3 install jupyter                                       
#pip3 install --upgrade numpy                               
#pip3 install keras tensorflow opencv-python 
