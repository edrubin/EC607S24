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
lec05 : $(dir-lec)lec05/notes.html $(dir-lec)lec05/notes.pdf
lec06 : $(dir-lec)lec06/notes.html $(dir-lec)lec06/notes.pdf
lec07 : $(dir-lec)lec07/notes.html $(dir-lec)lec07/notes.pdf
lec08 : $(dir-lec)lec08/notes.html $(dir-lec)lec08/notes.pdf
lec09 : $(dir-lec)lec09/notes.html $(dir-lec)lec09/notes.pdf

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
# Lecture 05
$(dir-lec)lec05/notes.html : $(dir-lec)lec05/notes.rmd $(dir-lec)lec05/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec05/notes.pdf : $(dir-lec)lec05/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 06
$(dir-lec)lec06/notes.html : $(dir-lec)lec06/notes.rmd $(dir-lec)lec06/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec06/notes.pdf : $(dir-lec)lec06/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 07
$(dir-lec)lec07/notes.html : $(dir-lec)lec07/notes.rmd $(dir-lec)lec07/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec07/notes.pdf : $(dir-lec)lec07/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 08
$(dir-lec)lec08/notes.html : $(dir-lec)lec08/notes.rmd $(dir-lec)lec08/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec08/notes.pdf : $(dir-lec)lec08/notes.html
	Rscript -e "pagedown::chrome_print('$<')"
# Lecture 09
$(dir-lec)lec09/notes.html : $(dir-lec)lec09/notes.rmd $(dir-lec)lec09/my-css.css
	Rscript -e "rmarkdown::render('$<')"
$(dir-lec)lec09/notes.pdf : $(dir-lec)lec09/notes.html
	Rscript -e "pagedown::chrome_print('$<')"

# Global targets ---------------------------------------------------------------
lec-all: lec01 lec02 lec03 lec04 lec05 lec06 lec07 lec08 lec09
# Define clean
clean:
	rm -f lec-all
