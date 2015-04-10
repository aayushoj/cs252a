all: prob_density dot2tex flowchart

prob_density: prob_density.tex
	pdflatex prob_density.tex

flowchart: flowchart.tex
	pdflatex flowchart.tex

dot2tex: dot2tex.tex
	pdflatex --shell-escape dot2tex.tex

clean:
	rm *.log *.aux *.dot *.gnuplot
