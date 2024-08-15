---
perevir:
  filters:
  - parse-latex.lua
---

The below Markdown contains LaTeX snippets to set the color of
some words, and to define a table.

``` markdown {#input}
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec
hendrerit \textcolor{red}{tempor tellus}. Donec pretium posuere
tellus. Proin quam nisl, tincidunt et, mattis eget, convallis nec,
purus.

\begin{tabularx}{0.8\textwidth} { l | c | r }
 lorem 1 & ipsum 1 & nullus \\
 \hline
 lorem 2 & ipsum 2 & nullus \\
\end{tabularx}
```

Both uses of LaTeX are picked up and translated to Markdown.

> <div id="output">
>
> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec
> hendrerit [tempor tellus]{style="color: red"}. Donec pretium posuere
> tellus. Proin quam nisl, tincidunt et, mattis eget, convallis nec,
> purus.
>
> | lorem 1 | ipsum 1 | nullus |
> |:--------|:-------:|-------:|
> | lorem 2 | ipsum 2 | nullus |
>
> </div>
