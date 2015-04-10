all: prob_density dot2tex

prob_density: prob_density.tex
	pdflatex prob_density.tex

dot2tex: dot2tex.tex
	pdflatex --shell-escape dot2tex.tex

clean:
	rm *.dvi *.log *.aux *.dot
