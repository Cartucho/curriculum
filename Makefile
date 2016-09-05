all:
	# clean, just in case
	rm -f *aux && rm -f *blg && rm -f *bbl && rm -f *log
	# prepare the Portuguese CV
	perl -p -i -e 's/selectlanguage{english}/selectlanguage{portuguese}/g' ./joao_cartucho_cv.tex
	# compile the Portuguese CV
	pdflatex joao_cartucho_cv.tex
	mv joao_cartucho_cv.pdf joao_cartucho_cvPT.pdf
	# clean
	rm -f *aux && rm -f *blg && rm -f *bbl && rm -f *log
	# revert back and clean
	perl -p -i -e 's/selectlanguage{portuguese}/selectlanguage{english}/g' ./joao_cartucho_cv.tex
	# process the English CV
	pdflatex joao_cartucho_cv.tex
	# clean
	rm -f *aux && rm -f *blg && rm -f *bbl && rm -f *log
