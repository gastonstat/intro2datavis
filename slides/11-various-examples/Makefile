# source Rnw file
rnw = $(wildcard ls *.Rnw)
# get just the name (no extension)
file = $(patsubst %.Rnw,%,$(rnw))


.PHONY: clean


all: $(file).tex


$(file).tex: $(file).Rnw
	Rscript -e "library(knitr); knit2pdf('$(<)', output = '$(@)')"
	# remove secondary files
	rm -f *.{aux,log,nav,out,snm,vrb,toc}


clean:
	rm -f *.tex
