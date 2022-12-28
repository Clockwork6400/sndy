# FreeBSD Ports
#Установка / Installation:

>  pkg install sysutils/sndy 
> 
or / или

> cd /usr/ports/sysutils/sndy
> make install clean 

#Запуск / Launch:

> sndy

or / или
mouse from the menu

#Удаление / Removal:

> pkg remove sysutils/sndy
> 
or / или
> cd /usr/ports/sysutils/sndy
> make deinstall

## Github
#Установка / Installation:

(зависимости / dependencies):
> sudo pkg install tcl86 tk86

> sudo mkdir -p /opt/sndy

> sudo chown -R $USER /opt/

> cd /opt/

> git clone https://github.com/Clockwork6400/sndy.git

> cp sndy/sndy.desktop /usr/local/share/applications/sndy.desktop


#Запуск / Launch:

> /usr/local/bin/wish8.6 /opt/sndy/sndy.tcl
> 
or / или
> mouse from the menu

#Удаление / Removal:

> rm /usr/local/share/applications/sndy.desktop

> rm -rf /opt/sndy/

---

sndy - программа на тикле для переключения звука, которая позволит перенаправить вывод звука на переднюю/заднюю панель или другое устройство, которое определилось в системе. Это может 
быть звуковая карта или вход hdmi.

Кнопки в программе соответствуют строке с инитом в вашем файле /dev/sndstat.
При нажатии на кнопку выполняется переключение вывода звука на соответствующий инит pcm<X> при помощи 
выполнения команды sysctl hw.snd.default_unit=<номер_инита>. 

Не переключайте инит во время воспроизведения одного звукового файла. Звуковая система OSS может
воспроизводить звук только в одно устройство одновременно. Поэтому перед переключением инита
нужно дождаться окончания или завершения предыдущего звукового файла.

Cкролл-бар может быть использован для изменения уровня громкости. Громкость изменяется при помощи команды mixer vol <индикатор>*10. То есть каждая цифра от 0 до 10 умноженная на 10 соответствут проценту громкости.

Выбраный инит pcm<X> сохраняется только до перезагрузки. Для сохранения вывода звука по умолчанию нужно добавить hw.snd.default_unit=<номер_инита> в системный файл /etc/sysctl.conf

---

EOF.
