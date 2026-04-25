LATEXMK = latexmk
PDFTOTEXT = pdftotext
SRC     = paper/main.tex
DEPS    = $(SRC) paper/aion.cls paper/macros.tex paper/refs.bib
JOBNAME = aion-paper-07
BUILDDIR = pdf
DISTDIR = dist
PDF     = $(DISTDIR)/$(JOBNAME).pdf
TXT     = $(DISTDIR)/$(JOBNAME).txt

.PHONY: all pdf txt clean veryclean

all: $(PDF) $(TXT)

pdf: $(PDF)

txt: $(TXT)

$(PDF): $(DEPS)
	mkdir -p $(BUILDDIR) $(DISTDIR)
	cd paper && TEXINPUTS="..:.:$(TEXINPUTS)" \
	  LC_ALL=C LANG=C $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error \
	  -jobname=$(JOBNAME) -output-directory=../$(BUILDDIR) main.tex
	mv -f $(BUILDDIR)/$(JOBNAME).pdf $@

$(TXT): $(PDF)
	mkdir -p $(DISTDIR)
	# Generate a faithful plain-text rendering from the built PDF so that the
	# title page + abstract are included (Pandoc's LaTeX reader does not fully
	# interpret our custom class front matter).
	LC_ALL=C LANG=C $(PDFTOTEXT) -layout -nopgbrk $(PDF) $@

clean:
	cd paper && LC_ALL=C LANG=C $(LATEXMK) -C -jobname=$(JOBNAME) -output-directory=../$(BUILDDIR) main.tex
	rm -f $(BUILDDIR)/$(JOBNAME).*
	rm -f $(BUILDDIR)/main.*
	rm -f $(PDF)
	rm -f $(TXT)

veryclean: clean
