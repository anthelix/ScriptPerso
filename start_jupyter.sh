# Pour installer Python sur goinfre                                                                                                                               
# (il faudra le refaire sur chaque nouvelle machine, et a chque fois que goinfre est efface)                                                                      

# use source, Luke!                                                                                                                                               

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

export PATH="$MINICONDA_PATH/bin:$PATH"

echo
echo Current Versions of Python and pip:
which python
which pip
python -V
pip -V

echo
echo "install Python version $VERSION? (control-C to exit)"
read junk

echo
echo '-->' downloader intallateur Miniconda...
curl -LO http://repo.continuum.io/miniconda/$SCRIPT

echo
echo  '-->'$UPDATE_OP installation de Python $VERSION
sh $SCRIPT $UPDATE -b -p $MINICONDA_PATH
rm $SCRIPT

echo
echo '-->' installer des modules avec pip...
# pip install -U django
pip install -U jupyter numpy pandas matplotlib
pip install -U scikit-learn seaborn
pip install keras tensorflow opencv-python glob3


# d'autres trucs utiles pour Kai et pour le ML                                                                                                                    
#alias ls='ls -F'                                                                                                                                                 
#export PS1='\w> '                                                                                                                                                
#cd /sgoinfre/goinfre/Perso/rcarver/                                                                                                                              
echo 'start Jupyter? (control-C to exit)'
read junk
jupyter notebook &