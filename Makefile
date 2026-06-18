
%.html: %.htmi
	m4 -P -I components $< > $@

all: *.html
