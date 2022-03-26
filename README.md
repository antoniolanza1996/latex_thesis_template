# latex_thesis_template
This repository contains my master's thesis LaTeX template.

You can start looking from `thesis_template.tex` - 12 lines that can help you understand the thesis structure:
```
\input{all_imports.tex}
\begin{document}
	\includepdf{title_page/title_page.pdf}
	\tableofcontents
	\listoffigures
	\listoftables
	\input{introduction.tex}
	\input{chapter1.tex} % let's put a new \input{} for each chapter...
	\input{conclusions.tex}
	\bibliography{bibliography}
	\input{acknowledgments.tex}
\end{document}
```

# Useful resources
* https://www.tablesgenerator.com/latex_tables: create tables and quickly extract table's LaTeX source code.

* Word count: if you need to count the number of words of your generated PDF, read more information in `word_count/count_pdf_words.sh`.