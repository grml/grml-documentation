# TARGETS = chunked docbook dvi epub htmlhelp manpage pdf ps tex text xhtml
TARGETS = chunked docbook dvi epub htmlhelp pdf ps tex text xhtml
SOURCES = $(wildcard *.txt)

all: targets

.PHONY: clean
clean:
	rm -fr $(TARGETS)

.PHONY: targets $(TARGETS)
targets: $(TARGETS)

$(TARGETS): 
	@mkdir -p $@
	for file in $(SOURCES) ; do \
	   a2x -f $@ --destination-dir $@ $$file ; \
	done
