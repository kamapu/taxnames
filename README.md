# taxnames: Formating taxonomic names in Markdown and LaTeX


- [Motivation](#motivation)
- [Get started](#get-started)
  - [Installing taxnames](#installing-taxnames)

# Motivation

This package attempts to simplify the citation and formatting of
taxonomic names in Markdown documents ([R
Markdown](https://rmarkdown.rstudio.com/) and
[Quarto](https://quarto.org/)) as well as in LaTeX
([knitr](https://yihui.org/knitr/)).

To use this package, you need to have a taxonomic list imported into the
[taxlist](https://docs.ropensci.org/taxlist/) package, including
taxonomic ranks and parent-child relationships.

# Get started

## Installing taxnames

Assuming you are already working in one of the frameworks, either R
Mardown or Quarto, you will need to install `taxnames` on your own
system.

``` r
install.packages("taxnames", dependencies = TRUE)
```

Alternatively, you can download the latest development version from
**GitHub** using the package [remotes](https://remotes.r-lib.org/).

``` r
library(remotes)
install_github("kamapu/taxnames")
```
