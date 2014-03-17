NJTREE=		njtree
FILES=		mpfig.1 mpfig.2 mpfig.3 mpfig.4 mpfig.5 mpfig.7 mpfig.8 mpfig.9 mpfig.10 mpfig.11\
			thesis.tex build-tree.tex \
			dli.tex \
			evaluation.tex \
			header.tex \
			implementation.tex \
			introduction.tex \
			treefam.tex \
			tree-merge.tex \
			publications.tex \
			dli-exa.pdf gtree.pdf CCNI-ds.pdf CCNI-dn.pdf CCNI-dm.pdf traceid.pdf chapflow.pdf\
			tree-0.pdf tree-1.pdf \
			leaf-ts1.pdf leaf-ts2.pdf \
			flowchart.pdf \
			schemata.png
CJKFILES=	thesis-cjk.tex header-cjk.tex evaluation-cjk.tex tree-merge-cjk.tex dli-cjk.tex \
			build-tree-cjk.tex treefam-cjk.tex introduction-cjk.tex implementation-cjk.tex schemata.eps flnjtree.eps treefam-shot.eps \
			publications-cjk.tex

LATEX=		pdflatex

.SUFFIXES:.eps .pdf .png

.eps.pdf:
		epstopdf --outfile $@ $<

.png.eps:
		convert $< $@

all:thesis.pdf thesis-cjk.ps

full:$(FILES) ref.bib spec.pdf
		$(LATEX) thesis.tex; bibtex thesis; makeindex thesis.idx; $(LATEX) thesis.tex; makeindex thesis.idx; $(LATEX) thesis.pdf

thesis.bbl:ref.bib
		$(LATEX) thesis.tex; bibtex thesis; makeindex thesis.idx; $(LATEX) thesis.tex; makeindex thesis.idx

thesis.pdf:$(FILES) spec.pdf thesis.bbl
		$(LATEX) thesis.tex

thesis-cjk.bbl:ref.bib
		latex thesis-cjk; bibtex thesis-cjk; latex thesis-cjk

thesis-cjk.ps:$(CJKFILES) thesis-cjk.bbl
		latex thesis-cjk; dvips thesis-cjk

schemata.eps:schemata.png
flnjtree.eps:flnjtree.png
treefam-shot.eps:treefam-shot.png

tree-0.eps: tree-0.nhx
		$(NJTREE) export -dMy300 -x550 $< > $@
tree-1.eps: tree-1.nhx
		$(NJTREE) export -dMy300 -x550 $< > $@

mpfig.1 mpfig.2 mpfig.3 mpfig.4 mpfig.5 mpfig.6 mpfig.7 mpfig.8 mpfig.9:mpfig.mp
		mpost $<

#spec.eps:spec.nh
#		$(NJTREE) export -Mpy240 -f13 $< > $@

CCNI-ds.eps:CCNI.ds.nhx
		$(NJTREE) export -dMy240 $< > $@
CCNI-dn.eps:CCNI.dn.nhx
		$(NJTREE) export -dMy240 $< > $@
CCNI-dm.eps:CCNI.dm.nhx
		$(NJTREE) export -dpMy240 $< > $@

clean:
		rm -f *.aux *.idx *.log *.out *.pdf *.toc *.dvi *.bbl *.blg mpfig.mpx tmpgraph.* mpxerr.tex mpfig.1? \
			*.ind *.ilg mpfig.? thesis*.lot thesis*.lof bd?.eps tree-0.eps tree-1.eps thesis-cjk.ps schemata.eps \
			flnjtree.eps treefam-shot.eps
