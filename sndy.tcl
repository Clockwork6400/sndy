#!/usr/local/bin/wish8.6

#
# Copyright (c) 2022, clockwork@freebsd.org
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

set pcm [exec sysctl -n hw.snd.default_unit ]; 

grid [label .myLabel -text "Выбрано устройство: pcm$pcm" -textvariable labelText -font Tahoma]

set pcm0 [ exec cat /dev/sndstat | awk {/^pcm0/} ];
set pcm1 [ exec cat /dev/sndstat | awk {/^pcm1/} ];
set pcm2 [ exec cat /dev/sndstat | awk {/^pcm2/} ];
set pcm3 [ exec cat /dev/sndstat | awk {/^pcm3/} ];
set pcm4 [ exec cat /dev/sndstat | awk {/^pcm4/} ];
set pcm5 [ exec cat /dev/sndstat | awk {/^pcm5/} ];
set pcm6 [ exec cat /dev/sndstat | awk {/^pcm6/} ];
set pcm7 [ exec cat /dev/sndstat | awk {/^pcm7/} ];
set pcm8 [ exec cat /dev/sndstat | awk {/^pcm8/} ];
set pcm9 [ exec cat /dev/sndstat | awk {/^pcm9/} ];
set pcm10 [ exec cat /dev/sndstat | awk {/^pcm10/} ];
set pcm11 [ exec cat /dev/sndstat | awk {/^pcm11/} ];
set pcm12 [ exec cat /dev/sndstat | awk {/^pcm12/} ];


proc myEvent0 { } {
	global labelText
	exec sysctl hw.snd.default_unit=0
	puts "sysctl hw.snd.default_unit=0"
	set labelText "Выбрано устройство: pcm0" 
}

proc myEvent1 { } {
	global labelText
 	exec sysctl hw.snd.default_unit=1
	puts "sysctl hw.snd.default_unit=1"
	set labelText "Выбрано устройство: pcm1" 
}

proc myEvent2 { } {
	global labelText
 	exec sysctl hw.snd.default_unit=2
	puts "sysctl hw.snd.default_unit=2"
	set labelText "Выбрано устройство: pcm2" 
}

proc myEvent3 { } {
	global labelText
 	exec sysctl hw.snd.default_unit=3
	puts "sysctl hw.snd.default_unit=3"
	set labelText "Выбрано устройство: pcm3"
}

proc myEvent4 { } {
	global labelText
 	exec sysctl hw.snd.default_unit=4
	puts "sysctl hw.snd.default_unit=4"
	set labelText "Выбрано устройство: pcm4" 
}

proc myEvent5 { } {
	global labelText
 	exec sysctl hw.snd.default_unit=5
	puts "sysctl hw.snd.default_unit=5"
	set labelText "Выбрано устройство: pcm5" 
}

proc myEvent6 { } {
	global labelText
 	exec sysctl hw.snd.default_unit=6
	puts "sysctl hw.snd.default_unit=6"
	set labelText "Выбрано устройство: pcm6" 
}

proc myEvent7 { } {
 	exec sysctl hw.snd.default_unit=7
	puts "sysctl hw.snd.default_unit=7"
	set labelText "Выбрано устройство: pcm7" 
}

proc myEvent8 { } {
 	exec sysctl hw.snd.default_unit=8
	puts "sysctl hw.snd.default_unit=8"
	set labelText "Выбрано устройство: pcm8" 
}

proc myEvent9 { } {
 	exec sysctl hw.snd.default_unit=9
	puts "sysctl hw.snd.default_unit=9"
	set labelText "Выбрано устройство: pcm9" 
}

proc myEvent10 { } {
 	exec sysctl hw.snd.default_unit=10
	puts "sysctl hw.snd.default_unit=10"
	set labelText "Выбрано устройство: pcm10" 
}

proc myEvent11 { } {
 	exec sysctl hw.snd.default_unit=11
	puts "sysctl hw.snd.default_unit=11"
	set labelText "Выбрано устройство: pcm11" 
}

proc myEvent12 { } {
 	exec sysctl hw.snd.default_unit=12
	puts "sysctl hw.snd.default_unit=12"
	set labelText "Выбрано устройство: pcm12" 
}

if {$pcm0 != "" } {
grid [button .myButton0  -text "$pcm0" -command myEvent0]
bind .  ".myButton0 invoke"
}
if {$pcm1 != "" } {
grid [button .myButton1  -text "$pcm1" -command myEvent1]
bind .  ".myButton1 invoke"
}
if {$pcm2 != "" } {
grid [button .myButton2  -text "$pcm2" -command myEvent2]
bind .  ".myButton2 invoke"
}
if {$pcm3 != "" } {
grid [button .myButton3  -text "$pcm3" -command myEvent3]
bind .  ".myButton3 invoke"
}
if {$pcm4 != "" } {
grid [button .myButton4  -text "$pcm4" -command myEvent4]
bind .  ".myButton4 invoke"
}
if {$pcm5 != "" } {
grid [button .myButton5  -text "$pcm5" -command myEvent5]
bind .  ".myButton5 invoke"
}
if {$pcm6 != "" } {
grid [button .myButton6  -text "$pcm6" -command myEvent6]
bind .  ".myButton6 invoke"
}
if {$pcm7 != "" } {
grid [button .myButton7  -text "$pcm7" -command myEvent7]
bind .  ".myButton7 invoke"
}
if {$pcm8 != "" } {
grid [button .myButton8  -text "$pcm8" -command myEvent8]
bind .  ".myButton8 invoke"
}
if {$pcm9 != "" } {
grid [button .myButton9  -text "$pcm9" -command myEvent9]
bind .  ".myButton9 invoke"
}
if {$pcm10 != "" } {
grid [button .myButton10  -text "$pcm10" -command myEvent10]
bind .  ".myButton10 invoke"
}
if {$pcm11 != "" } {
grid [button .myButton11  -text "$pcm11" -command myEvent11]
bind .  ".myButton11 invoke"
}
if {$pcm12 != "" } {
grid [button .myButton12  -text "$pcm12" -command myEvent12]
bind .  ".myButton12 invoke"
}

frame .frame4 

ttk::label .frame4.l0 -text "= = = = = = Уровень громкости = = = = = =" -font Tahoma
scale .frame4.timeout -width 10 -orient horizontal -from 0 -to 10 -tickinterval 1 -relief raised -command {selecttact}

grid .frame4.l0 -column 1 -row 0 -sticky nwes
grid .frame4.timeout -column 1 -row 1 -sticky nwes

# Паковка фреймов
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

