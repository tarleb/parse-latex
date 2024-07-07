Parse LaTeX – a Lua filter
==================================================================

A filter to use when the input contains raw LaTeX that should be
parsed and included even in non-LaTeX output formats. The filter
uses pandoc's LaTeX reader to parse raw snippets.

Functionality
------------------------------------------------------------------

The intended use for this filter are cases in which a Markdown
document contains LaTeX snippets that are not just formatting
additions, but a part of the content. Any raw LaTeX snippet, such
as `\textcolor{red}{lorem ipsum}`, will be parsed as LaTeX. The
result is then re-inserted into the document, replacing the
snippet. The above will yield `<span style="color: red">lorem
ipsum</span>` when converting to HTML.

The snippets will be passed through unchanged when converting to
LaTeX/PDF.

The filter is particularly useful with tables: it becomes possible
to use some of extra power of LaTeX, while still getting sensible
output with other formats. E.g.:

````
```{=latex}
\begin{tabular}{|l|l|}
 \hline
 one & two \\
 \hline
 three & four \\
 \hline
\end{tabular}
```
````

The PDF output will have horizontal and vertical table lines,
something that's otherwise difficult to accomplish with pandoc.¹

The filter uses pandoc's LaTeX parser, so if pandoc cannot parse a
LaTeX snippet, then neither can this filter.

¹ The reason for this is that vertical lines in tables are
  considered as ugly and bad style by most typographers.


Usage
------------------------------------------------------------------

Pass the filter to pandoc via the `--lua-filter` (or `-L`) command
line option.

    pandoc --lua-filter parse-latex.lua ...

Raw LaTeX blocks and inlines will be parsed by pandoc and inserted
back into the document. The filter does nothing when converting to
LaTeX, and the original snippets are passed through in this case.

Users of Quarto can install this filter as an extension with

    quarto install extension tarleb/parse-latex

and use it by adding `parse-latex` to the `filters` entry
in their YAML header.

``` yaml
---
filters:
  - parse-latex
---
```


License
------------------------------------------------------------------

This pandoc Lua filter is published under the MIT license, see
file `LICENSE` for details.
