
# FreeBSD Ports
#Installation:

>  pkg install sysutils/sndy 
> 
or

> cd /usr/ports/sysutils/sndy\
> make install clean 

#Launch:

> sndy

or
mouse from the menu

#Removal:

> pkg remove sysutils/sndy
> 
or 
> cd /usr/ports/sysutils/sndy
> make deinstall

## Github
#Installation:

(dependencies):
> sudo pkg install tcl86 tk86

> sudo mkdir -p /opt/sndy\
> sudo chown -R $USER /opt/\
> cd /opt/\
> git clone https://github.com/Clockwork6400/sndy.git \
> cp sndy/sndy.desktop /usr/local/share/applications/sndy.desktop


#Launch:

> /usr/local/bin/wish8.6 /opt/sndy/sndy.tcl
> 
or 
> mouse from the menu

#Removal:

> rm /usr/local/share/applications/sndy.desktop\
> rm -rf /opt/sndy/

---

sndy - is an audio switching program that allows you to redirect sound output to any port of your computer.

The buttons in the program correspond to the init line in your /dev/sndstat. Pressing the button toggles the sound output with the sysctl command
hw.snd.default_unit=X. 

Do not switch audio output during playback of a single audio file. The OSS sound system can only play sound to one device
at a time. Therefore, you need to wait for the end or completion of the previous sound file before switching.

The scroll bar can be used to change the volume level. The volume is changed using the mixer vol <indicator>*10 command. That is, each digit
from 0 to 10 multiplied by 10 corresponds to a percentage of volume.

The selected pcm<X> is only saved until you reboot. To save the default sound output, add hw.snd.default_unit=<number> to the system file /etc/sysctl.conf

---

EOF.
