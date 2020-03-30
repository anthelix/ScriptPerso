##### Anthelix stuff 

## todo
* add a cron tasks: save .zshrc every week in /progetgit and send mail
* create a file with all my alias, write a function in .zshrc, create crontask
* create a script post instal solus

# All My Scripts and Solus Settings


## Scripts

All programs to be installed on Solus or useful for my mac at 42.

### Install Solus
* Laptop partionned in part1 to swap, part2 to OS, part3 to my home, part4 is free for an other OS
* Choose to keep the partitions
* Set user, laptop, ans password with the same settings before cleaning or crash. It's useful to have the same home
* sudo eopkg upgrade
* sudo eopkg up
* sudo eopkg rebuild-db -y
* sudo eopkg history

#### Getting back to the STABLE REPO
* sudo eopkg remove-repo SolusUnstable
* sudo eopkg add-repo Solus https://packages.solus-project.com/shannon/eopkg-index.xml.xz
* sudo eopkg enable-repo Solus
* sudo eopkg upgrade


### Scripts list
* `copy_files.sh`: save .zshrc and dependencies
* `zshrc`: config of oh-my-zsh
* `zshrc_aliases`: my useful zsh aliases
* `zshrc_fuctions`: my useful zsh functions 


##### Example installation (Trello)
* Download latest unofficial trello desktop app
https://github.com/danielchatfield/trello-desktop/releases/latest
* cd ~/Downloads
* unzip : tar xf
* create /opt if not exists : create /opt
* create /opt/trello
* Set the SuperUser as Owner : sudo chown -R root:root ./Trello-linux-0.1.9
* move it to /opt/trello: udo mv Trello-linux-0.1.9 /opt/trello
* Finally, Make a Symlink to Easy Launching from Shell:sudo ln -s /opt/trello/Trello /usr/local/bin/Trello
* Add it to Quick Access Desktop app: 
    * sudo echo -e '[Desktop Entry]\n Version=1.0\n Name=Trello\n  
    * Icon=/opt/Trello/resources/app/static/Icon.png\nExec=/opt/Trello/Trello\n Type=Application\n Categories=Office' | sudo tee /usr/share/applications/Trello.desktop


###### alias zsh 42
alias start_xcode="sh ~/Documents/script/.start_xcode.sh"  
alias start_jupyter="sh ~/Documents/script/start_jupyter.sh"  
alias start_python="sh ~/Documents/script/start_python.sh" 
alias listports="networksetup -listallhardwareports"
