
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

===

sndy - программа для переключения звука, которая позволит перенаправить вывод звука на любой порт вашего компьютера.

Кнопки в программе соответствуют строке с инитом в вашем файле /dev/sndstat. Нажатие кнопки переключает вывод звука с помощью команды sysctl.hw.snd.default_unit=Х.

Не переключать аудиовыход во время воспроизведения одного звукового файла. Звуковая система OSS может одновременно воспроизводить звук только на одном устройстве. Поэтому перед переключением нужно дождаться окончания или завершения предыдущего звукового файла.

Полоса прокрутки может использоваться для изменения уровня громкости. Громкость изменяется при помощи команды mixer vol <индикатор>*10. То есть каждая цифра от 0 до 10 умноженная на 10 соответствут проценту громкости.

Выбраный инит pcm<X> сохраняется только до перезагрузки. Для сохранения вывода звука по умолчанию нужно добавить hw.snd.default_unit=<номер> в системный файл /etc/sysctl.conf

===

EOF.
