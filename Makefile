# Options and directories ------------------------------------------------------
# Option for R
R_OPTS=--vanilla
# Directories
dir-lec = notes-lecture/

# Name targets -----------------------------------------------------------------
lec01 : $(dir-lec)lec01/notes.html $(dir-lec)lec01/notes.pdf
lec02 : $(dir-lec)lec02/notes.html $(dir-lec)lec02/notes.pdf

# Define individual links ------------------------------------------------------
# Lecture 01
$(dir-lec)lec01/notes.html : $(dir-lec)lec01/notes.rmd
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec01/notes.pdf : $(dir-lec)lec01/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 02
$(dir-lec)lec02/notes.html : $(dir-lec)lec02/notes.rmd
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec02/notes.pdf : $(dir-lec)lec02/notes.html
	Rscript -e "pagedown::chrome_print('$<')"

# Global targets ---------------------------------------------------------------
lec-all: lec01 lec02
# Define clean
clean:
	rm -f lec-all
