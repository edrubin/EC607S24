# Options and directories ------------------------------------------------------
# Option for R
R_OPTS=--vanilla
# Directories
dir-lec = notes-lecture/

# Name targets -----------------------------------------------------------------
lec01 : $(dir-lec)lec01/notes.html $(dir-lec)lec01/notes.pdf
lec02 : $(dir-lec)lec02/notes.html $(dir-lec)lec02/notes.pdf
lec03 : $(dir-lec)lec03/notes.html $(dir-lec)lec03/notes.pdf
lec04 : $(dir-lec)lec04/notes.html $(dir-lec)lec04/notes.pdf

# Define individual links ------------------------------------------------------
# Lecture 01
$(dir-lec)lec01/notes.html : $(dir-lec)lec01/notes.rmd $(dir-lec)lec01/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec01/notes.pdf : $(dir-lec)lec01/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 02
$(dir-lec)lec02/notes.html : $(dir-lec)lec02/notes.rmd $(dir-lec)lec02/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec02/notes.pdf : $(dir-lec)lec02/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 03
$(dir-lec)lec03/notes.html : $(dir-lec)lec03/notes.rmd $(dir-lec)lec03/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec03/notes.pdf : $(dir-lec)lec03/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 04
$(dir-lec)lec04/notes.html : $(dir-lec)lec04/notes.rmd $(dir-lec)lec04/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec04/notes.pdf : $(dir-lec)lec04/notes.html
	Rscript -e "pagedown::chrome_print('$<')"

# Global targets ---------------------------------------------------------------
lec-all: lec01 lec02 lec03 lec04
# Define clean
clean:
	rm -f lec-all
