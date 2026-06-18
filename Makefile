
%.html: %.htmi
	m4 -P -I components $< > $@

SRCS := $(wildcard *.htmi) 
HTMLS := $(patsubst %.htmi,%.html,$(SRCS))

all: $(HTMLS) components/header.m4 components/footer.m4

clean:
	rm $(HTMLS)
