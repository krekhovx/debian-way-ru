MAIN=debian-way-ru
PDF=$(MAIN).pdf
TEX=$(MAIN).tex

all: $(PDF)

$(PDF): $(TEX) chapters/*.tex
	latexmk -xelatex $(TEX)

run: $(PDF)
	firefox $(PDF)

clean:
	latexmk -C

.PHONY: all run clean
