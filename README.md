
#Установка:

% sudo pkg install tcl86 tk86

% sudo mkdir -p /opt/sndy

% sudo chown -R $USER /opt/

% cd /opt/

% git clone https://github.com/Clockwork6400/sndy.git

% cd sndy/

% cat <<EOF > /home/$USER/.local/share/applications/sndy.desktop \
[Desktop Entry] \
Name=sndy \
Comment=PROGRAM FOR SOUND SWITCHING IN FreeBSD \
Keywords= \
Exec=/usr/local/bin/wish8.6 /opt/sndy/sndy.tcl \
Terminal=false \
Type=Application \
#Icon= \
Categories=sysutils \
EOF

#Запуск

% /usr/local/bin/wish8.6 /opt/sndy/sndy.tcl

#Удаление:

% rm /home/$USER/.local/share/applications/sndy.desktop

% rm -rf /opt/sndy/
