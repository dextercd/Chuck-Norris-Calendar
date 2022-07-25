all: calendar.pdf

jokes: extract_jokes_csv.sh jokes.csv
	sh extract_jokes_csv.sh jokes.csv >jokes

days.tex: days_tex_gen.tcl jokes
	tclsh $<

calendar.pdf: calendar.tex days.tex
	luatex --interaction=nonstopmode $<

look: calendar.pdf
	zathura $<
