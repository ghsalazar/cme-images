SRCDIR = ../src
FIGURES = $(patsubst %.mp, %.svg, $(notdir $(wildcard $(SRCDIR)/*.mp)))

all: $(FIGURES)


%.svg: $(SRCDIR)/%.mp
	mpost $<

.PHONNY: distclean clean

distclean: 
	rm -f $(wildcard *.log)
	
clean: distclean
	rm -f $(wildcard *.svg)