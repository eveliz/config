# update
sudo apt update
sudo apt-get upgrade


## BASICS
# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

# others
sudo apt install build-essential

# java jdk
sudo apt-get install default-jdk

# c++
sudo apt-get install g++

# remove programs
sudo apt-get purge seahorse
sudo apt-get purge thunderbird
sudo apt-get purge remmina
sudo apt-get purge transmission-gtk
sudo apt-get purge totem totem-plugins

# remove folders o places in Nautilus
# comment entries unwanted
sudo subl ~/.config/user-dirs.dirs
sudo subl /etc/xdg/user-dirs.defaults

# install windows fonts
sudo add-apt-repository multiverse
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

# restricted extras (include privative codecs)
sudo apt-get install ubuntu-restricted-extras

# thunar
sudo apt-get install thunar


## STYLE
# ubuntu gnome
sudo apt install ubuntu-desktop

# remove ubuntu dock (unity style)
# gnome-extensions list/
gnome-extensions disable ubuntu-dock@ubuntu.com

# gnome tweak
sudo apt-get install gnome-tweak-tool
sudo apt install chrome-gnome-shell

# remember install firefox add-on for gnome extensions
# extensions:
# ArcMenu, Clipboard Indicator, Dash to Dock, Dash to Panel, Screenshot Tool, User Themes


## ADMIN
# dconf-editor
sudo apt-get install dconf-editor

# htop
sudo apt-get install htop

# neofetch (system info over terminal)
sudo apt-get install neofetch

# gparted
sudo apt-get install gparted

# grub customizer
sudo apt install grub-customizer

# testdisk [optional]
sudo apt-get install testdisk

# gdebi (in order to install deb packages directly)
sudo apt-get install gdebi

# breachbit
sudo apt-get install bleachbit

# menu libre
sudo apt-get install menulibre

# font manager
sudo apt-get install font-manager


## HARDWARE
# lm-sensors, psonsor [optional]
sudo apt-get install lm-sensors
sudo sensors-detect
sudo /etc/init.d/kmod start
sensors
sudo apt-get install psensor


# ZIP
# unzip [already installed in ubuntu 20.04]
sudo apt-get install unzip


# UTI
# exiftool (edit metadata from a wide variety of type files)
sudo apt install exiftool
sudo apt install libimage-exiftool-perl
# to use: exiftool  <filename>


## DEV
# dev - PL
# python, by default python3 is installed
# see python.sh file

# r
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt-get -y install r-base r-base-dev
sudo apt-get install -y r-cran-devtools

# devtools
# The devtools R package requires three system packages to be installed on the Droplet,
# namely libcurl4-gnutls-dev, libxml2-dev, and libssl-devc. Install these three packages:
sudo apt-get -y install libcurl4-gnutls-dev libxml2-dev libssl-dev
sudo su - -c "R -e \"install.packages('devtools', repos='http://cran.rstudio.com/')\""

# dev - IDE
# pycharm
sudo snap install pycharm-community --classic
# configure projects folder to $HOME/lab/PyCharmProjects
# configure settings (line number, length of line, syntax inspections -spelling-, etc.)

# rstudio
sudo apt-get install libjpeg62
sudo sudo dpkg -i $HOME/INS/dev/IDE/RStudio/RStudio-2022.02.1-461.deb
# configure RStudio (packages, theme, length of line, etc.)

# dev - others
# git
sudo apt-get update
sudo apt-get install git
# bash:
git config --global user.name eveliz
git config --global user.email "edgardo.veliz.limas@gmail.com"

# dev - model
# drawio
sudo apt install -f $HOME/INS/dev/model/Drawio/Drawio-17.2.4.deb


## PDF
# foxit reader
sudo chmod +x $HOME/INS/PDF/Foxit-Reader/Foxit-Reader-2.4.4.0911.run
sudo $HOME/INS/PDF/Foxit-Reader/Foxit-Reader-2.4.4.0911.run
# installation folder: /opt/foxit-reader
sudo cp /opt/foxit-reader/FoxitReader.desktop /usr/share/applications/FoxitReader.desktop

# master pdf editor
sudo apt-get install libqt5svg5
# if there are problems due dependencies, use: sudo apt-get -f install
sudo dpkg -i $HOME/INS/PDF/MasterPDFEditor/MasterPDFEditor-4.3.89.deb

## TEX
# texlive
sudo apt-get update
sudo apt-get install texlive

# equalx
sudo apt-get install equalx
sudo mkdir /opt/equalx
sudo cp $HOME/INS/office/EqualX/equalx-icon.png /opt/equalx/equalx-icon.png
# update .desktop file with MenuEditor

# texstudio
sudo add-apt-repository ppa:sunderme/texstudio
sudo apt-get update
sudo apt-get install texstudio


## IMAGE
# gimp
sudo apt-get install gimp

# inkscape
sudo apt-get install inkscape

# pensela
sudo apt install -f $HOME/INS/img/Pensela/Pensela-1.2.5.deb


## MEDIA
# vlc
sudo apt-get install vlc

# audacity
sudo add-apt-repository ppa:ubuntuhandbook1/audacity
sudo apt-get update
sudo apt-get install audacity

# handbrake
sudo apt-get install handbrake

# obs
sudo apt-get install obs-studio

# easytag
sudo apt-get install easytag

# tuxguitar
sudo apt-get install -y tuxguitar
sudo mkdir /opt/tuxguitar
sudo cp $HOME/INS/media/TuxGuitar/tuxguitar-icon.png /opt/tuxguitar/tuxguitar-icon.png
# update .desktop file with MenuEditor


## WEB
# deluge
sudo apt install software-properties-common
sudo add-apt-repository ppa:deluge-team/stable
sudo apt install deluge


## VIRTUAL
sudo apt install virtualbox virtualbox-ext-pack


## OTHERS (OPTIONAL)
# lm-sensors, hddtemp and psonsor

