SRCDIR = ../src
ASSETS_DIR = ../assets
FIGURES = $(patsubst %.mp, %-1.svg, $(notdir $(wildcard $(SRCDIR)/*.mp)))
ASSETS = $(notdir $(wildcard $(ASSETS_DIR)/*.png))

.PRECIOUS: %-1.eps %.pdf

all: $(FIGURES) $(ASSETS)
#	cp ../assets/*.png .
	chmod 644 *.png *.eps *.pdf *.svg

%.png:: $(ASSETS_DIR)/%.png
	cp $< $@

%-1.eps: $(SRCDIR)/%.mp
	mpost $<

%.pdf: %.eps
	epstopdf	$<	$@

%.svg: %.pdf
	pdf2svg		$<	$@

.PHONNY: distclean clean

distclean: 
	rm -f 	$(wildcard *.log)
	
clean: distclean
	rm -f 	*.png *.eps *.pdf *.svg

