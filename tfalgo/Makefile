NJTREE=		njtree
MPFIG=		mpfig.1 mpfig.2 mpfig.3 mpfig.4 mpfig.5 mpfig.6

.SUFFIXES:.eps .pdf

.eps.pdf:
		epstopdf --outfile $@ $<

all:tfalgo.pdf

tfalgo.pdf:$(MPFIG) tfalgo.toc
		pdflatex tfalgo.tex

tfalgo.toc:tfalgo.tex
		pdflatex $<

$(MPFIG):mpfig.mp
		mpost $<

clean:
		rm -f *.aux *.idx *.log *.out *.pdf *.toc *.dvi *.bbl *.blg *.nav *.snm \
			mpfig.mpx tmpgraph.* mpxerr.tex mprun.mp mptrace.tmp mpgraph.mp \
			*.ind *.ilg CCNI?d?.eps mpfig.? bd?.eps
