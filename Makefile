

demuxed.pdf: demuxed-example.tex
	xelatex -shell-escape -interaction=nostopmode $< -o $@