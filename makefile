TEX = pandoc
FLAGS = --latex-engine=xelatex

%.pdf: template.tex %.yml
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

all: $(addsuffix .pdf, $(basename $(wildcard *.yml)))

.PHONY: clean
clean :
	rm *.pdf
