set f [open days.tex w+]
set j [open jokes r]
foreach {month daycount} {January 31 February 28 March 31 April 30 May 31 June 30 July 31 Augustus 31 September 30 October 31 November 30 December 31} {
	for {set day 1} {$day <= $daycount} {incr day} {
		gets $j joke
		set joke [regsub {[#%]} $joke {\\&}]
		puts $f "
		\\begincal
		\\monthtext{$month}
		\\daytext{$day}
		\\quotestart
		\\quote{$joke}
		\\endcal"
	}
}
