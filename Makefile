
%.html: %.htmi
	m4 -P -I components $< > $@

SRCS := $(wildcard *.htmi) $(wildcard  events/*/index.htmi)
HTMLS := $(patsubst %.htmi,%.html,$(SRCS))

all: $(HTMLS)

.PHONY: clean install uninstall
clean:
	rm $(HTMLS)

install:
	mkdir -p target
	cp -p *.html target/
	cp -p *.css target/
	mkdir -p target/images
	cp -p images/*.jpg target/images/
	for d in events/*; do \
		mkdir -p target/$$d; \
		if test -n "`ls $$d/*.jpg 2>/dev/null`"; then cp -p $$d/*.jpg target/$$d/; fi; \
		if test -n "`ls $$d/*.html 2>/dev/null`"; then cp -p $$d/*.html target/$$d/; fi; \
		if test -n "`ls $$d/*.mov 2>/dev/null`"; then cp -p $$d/*.mov target/$$d/; fi; \
	done

uninstall:
	rm -rf target
