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

set DI [exec ls -l /tmp/.X11-unix | awk {/X0/}]
if { "$DI" == "" } {
        puts "Error: no DISPLAY environment variable specified"
        exit
}
set pcm [exec sysctl -n hw.snd.default_unit ];

grid [label .myLabel -text "Выбрано устройство: pcm$pcm" -textvariable labelText -font Tahoma];
grid .myLabel -row 0 -column 0

set pcm0 [ exec awk {/^pcm0/} /dev/sndstat ];
set pcm1 [ exec awk {/^pcm1/} /dev/sndstat ];
set pcm2 [ exec awk {/^pcm2/} /dev/sndstat ];
set pcm3 [ exec awk {/^pcm3/} /dev/sndstat ];
set pcm4 [ exec awk {/^pcm4/} /dev/sndstat ];
set pcm5 [ exec awk {/^pcm5/} /dev/sndstat ];
set pcm6 [ exec awk {/^pcm6/} /dev/sndstat ];
set pcm7 [ exec awk {/^pcm7/} /dev/sndstat ];
set pcm8 [ exec awk {/^pcm8/} /dev/sndstat ];
set pcm9 [ exec awk {/^pcm9/} /dev/sndstat ];
set pcm10 [ exec awk {/^pcm10/} /dev/sndstat ];
set pcm11 [ exec awk {/^pcm11/} /dev/sndstat ];
set pcm12 [ exec awk {/^pcm12/} /dev/sndstat ];

if {$pcm0 != "" } {
ttk::button .bt1 -text "$pcm0" -command { func1 0 }
grid .bt1 -row 2 -column 0 -sticky nwes
}
if {$pcm1 != "" } {
ttk::button .bt2 -text "$pcm1" -command { func1 1 }
grid .bt2 -row 3 -column 0 -sticky nwes
}
if {$pcm2 != "" } {
ttk::button .bt3 -text "$pcm2" -command { func1 2 }
grid .bt3 -row 4 -column 0 -sticky nwes
}
if {$pcm3 != "" } {
ttk::button .bt4 -text "$pcm3" -command { func1 3 }
grid .bt4 -row 5 -column 0 -sticky nwes
}
if {$pcm4 != "" } {
ttk::button .bt5 -text "$pcm4" -command { func1 4 }
grid .bt5 -row 6 -column 0 -sticky nwes
}
if {$pcm5 != "" } {
ttk::button .bt6 -text "$pcm5" -command { func1 5 }
grid .bt6 -row 7 -column 0 -sticky nwes
}
if {$pcm6 != "" } {
ttk::button .bt7 -text "$pcm6" -command { func1 6 }
grid .bt7 -row 8 -column 0 -sticky nwes
}
if {$pcm7 != "" } {
ttk::button .bt8 -text "$pcm7" -command { func1 7 }
grid .bt8 -row 9 -column 0 -sticky nwes
}
if {$pcm8 != "" } {
ttk::button .bt9 -text "$pcm8" -command { func1 8 }
grid .bt9 -row 10 -column 0 -sticky nwes
}
if {$pcm9 != "" } {
ttk::button .bt10 -text "$pcm9" -command { func1 9 }
grid .bt10 -row 11 -column 0 -sticky nwes
}
if {$pcm10 != "" } {
ttk::button .bt11 -text "$pcm10" -command { func1 10 }
grid .bt11 -row 12 -column 0 -sticky nwes
}
if {$pcm11 != "" } {
ttk::button .bt12 -text "$pcm11" -command { func1 11 }
grid .bt12 -row 13 -column 0 -sticky nwes
}

proc func1 { var2 } {
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

set tactq [ exec mixer vol ]
regexp {([0-9][0-9]*)} "$tactq" var
set asd [expr $var / 10]; 
#puts "VOL: $var"

grid [label .myLabel2 -text "VOL: $var" -textvariable labelText2]

set tact $var
proc selecttact {i} {
global labelText2
global tact 

set tact $i
set tact [expr $tact * 10];
puts "set VOL: $tact"
exec mixer vol $tact

set labelText2 "VOL: $tact"
}
