Parse LaTeX – a Lua filter
==================================================================

[![GitHub build status][CI badge]][CI workflow]

A filter to use when the input contains raw LaTeX that should be
included in other output formats. The filter uses pandoc's LaTeX
reader to parse raw snippets.

[CI badge]: https://img.shields.io/github/workflow/status/tarleb/parse-latex/CI?logo=github
[CI workflow]: https://github.com/tarleb/parse-latex/actions/workflows/ci.yaml

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
