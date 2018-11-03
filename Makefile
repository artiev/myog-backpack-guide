.PHONY:

all: clean pdf view

view: .PHONY
	open build/guide.pdf

pdf: .PHONY
	latexmk -pdf -outdir=build guide.tex

clean: .PHONY
	latexmk -c -outdir=build
