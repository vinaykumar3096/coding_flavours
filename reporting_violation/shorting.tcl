#!/usr/bin/tclsh

set FR [ open ./report.txt r ]
set data ""
set flag 0

while { [ gets $FR line ] >= 0 } {
        if { [ regexp "Startpoint" $line ] } {
                set flag 1
        } elseif { [ regexp "slack" $line ] } {
                lappend data "$line \n"
                set flag 0
		if { [ regexp "VIOLATED" $line ] } {
                     puts $data
                     set data ""
                } elseif { [ regexp "MET" $line ] } {
                     set data ""
                }
        }
        if { $flag == 1 } {
               lappend data "$line \n"
        }
}

close $FR
