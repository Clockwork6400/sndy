## FreeBSD Ports
#Установка / Installation:

# pkg install sysutils/sndy
OR / ИЛИ
# cd /usr/ports/sysutils/sndy
# make install clean 

#Запуск / Launch:

% sndy
ИЛИ / OR
mouse from the menu

#Удаление / Removal:

# pkg remove sysutils/sndy
ИЛИ / OR
# cd /usr/ports/sysutils/sndy
# make deinstall

## github
#Установка / Installation:

(зависимости / dependencies):
% sudo pkg install tcl86 tk86

% sudo mkdir -p /opt/sndy

% sudo chown -R $USER /opt/

% cd /opt/

% git clone https://github.com/Clockwork6400/sndy.git

% cp sndy/sndy.desktop /usr/local/share/applications/sndy.desktop


#Запуск / Launch:

% /usr/local/bin/wish8.6 /opt/sndy/sndy.tcl
ИЛИ / OR
mouse from the menu

#Удаление / Removal:

% rm /usr/local/share/applications/sndy.desktop

% rm -rf /opt/sndy/
