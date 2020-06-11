set f [open days.tex w+]
set j [open jokes r]
foreach {month daycount} {Januari 31 Februari 28 Maart 31 April 30 Mei 31 Juni 30 Juli 31 Augustus 31 September 30 Oktober 31 November 30 December 31} {
	for {set day 1} {$day <= $daycount} {incr day} {
		gets $j joke
		set joke [regsub {[#%]} $joke {\\&}]
		puts $f "\\calpage {$month} {$day} {$joke}"
	}
}
