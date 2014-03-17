NJTREE=		njtree
FILES=		mpfig.5 mpfig.6 mpfig.7 mpfig.10 \
			lh3-phd.tex \
			gtree-plain.pdf gtree.pdf spec.pdf flowchart.pdf dli-exa.pdf dli-exa-plain.pdf
LATEX=		pdflatex

.SUFFIXES:.eps .pdf

.eps.pdf:
		epstopdf --outfile $@ $<

all:lh3-phd.pdf

lh3-phd.pdf:$(FILES)
		$(LATEX) lh3-phd; $(LATEX) lh3-phd

mpfig.1 mpfig.2 mpfig.3 mpfig.4 mpfig.5 mpfig.6 mpfig.7 mpfig.8 mpfig.9:mpfig.mp
		mpost $<

clean:
		rm -f *.aux *.idx *.log *.out *.pdf *.toc *.dvi *.bbl *.blg *.snm *.nav mpfig.mpx tmpgraph.* mpxerr.tex mpfig.1? \
			*.ind *.ilg mpfig.? lh3-phd.nav mpfig.mpo mptrace.tmp lh3-phd.snm mpgraph.mp
