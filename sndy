#!/usr/local/bin/wish8.6

#
# Copyright (c) 2022, Clockwork
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#

# VERSION 0.0.6

set os_version [exec uname -r]

# Определяем, какую команду использовать в зависимости от версии ОС
if {$os_version >= 14.0} {
    set vol_command "vol.volume=0."
} else {
    set vol_command "vol"
}

#Checking for a running session is not suitable for WAYLAND environments.
#set DI [exec ls -l /tmp/.X11-unix | awk {/X0/}]
#if { "$DI" == "" } {
#        puts "Error: no DISPLAY environment variable specified"
#        exit
#}
#set TTY [exec w | awk {/w/} | awk {/:0 /}]
#	if { "$TTY" == "" } {
#	puts "Error: no DISPLAY environment variable specified"
#	exit
#}

set pcmx [exec sysctl -n hw.snd.default_unit ];

grid [label .myLabel -text "Выбрано устройство: pcm$pcmx" -textvariable labelText -font Tahoma];
grid .myLabel -row 0 -column 0

set fn "/dev/sndstat"
if {[catch {set fd [open $fn r]} err]} {
	puts stderr "Error: $err"
	exit 2
}
set content [read $fd]
close $fd

set result {}
foreach line [split $content \n] {
        if {[regexp {^pcm\d:} $line]} {
                lappend result $line
        }
}

set max [llength $result]
for {set i 0} {$i < $max} {incr i} {
        set var2 [lindex $result $i]
        if {$var2 != "" } {
        ttk::button .bt$i -text "$var2" -command [list func1 $i]
        grid .bt$i -row 1$i -column 0 -sticky nwes
        }
}

proc func1 {var2} {
	global labelText
	exec sysctl hw.snd.default_unit=$var2
	puts "sysctl hw.snd.default_unit=$var2"
	set labelText "Выбрано устройство: pcm$var2"
}

frame .frame4 

ttk::label .frame4.l0 -text "= = = = = = Уровень громкости = = = = = =" -font Tahoma
scale .frame4.timeout -width 10 -orient horizontal -from 0 -to 10 -tickinterval 1 -relief raised -command {selecttact}

grid .frame4.l0 -column 1 -row 0 -sticky nwes
grid .frame4.timeout -column 1 -row 1 -sticky nwes

# паковка фреймов
grid .frame4 

#set tactq [ exec mixer vol.volume=0. ]
if {$os_version >= 14.0} {
    set tactq [ exec mixer ${vol_command} ]
} else {
    set tactq [ exec mixer ${vol_command} " " ]
}
regexp {([0-9][0-9]*)} "$tactq" var
set asd [expr $var / 10]; 
#puts "VOL: $var"

grid [label .myLabel2 -text "VOL: $var" -textvariable labelText2]

set tact $var
proc selecttact {i} {
global vol_command
global labelText2
global tact 
global os_version

set tact $i
set tact [expr $tact * 10];
puts "set VOL: $tact"
#exec mixer vol.volume=0.$tact
#exec mixer $vol_command$tact
if {$os_version >= 14.0} {
    exec mixer ${vol_command}$tact
} else {
    exec mixer ${vol_command} $tact
}

if {$tact == 100} {
	if {$os_version >= 14.0} {
            exec mixer vol.volume=1.00
	} else {
	    exec mixer vol 100
	}
    } else {
        if {$os_version >= 14.0} {
            exec mixer ${vol_command}$tact
        } else {
            exec mixer ${vol_command} $tact
        }
    }
#if {$tact == 100} {
#        exec mixer vol.volume=1.00
#    } else {
#        exec mixer $vol_command$tact
#    }

set labelText2 "VOL: $tact"
}
