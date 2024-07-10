

- [Motivation](#motivation)
- [Get started](#get-started)
  - [Installing taxnames](#installing-taxnames)
  - [Set a standard taxonomy](#set-a-standard-taxonomy)
- [Use case](#use-case)
  - [Accepted names](#accepted-names)
  - [Synonyms](#synonyms)
  - [Parental taxa](#parental-taxa)

<!-- badges: start -->

[![cran-status-badge](https://www.r-pkg.org/badges/version/taxnames)](https://cran.r-project.org/package=taxnames)
[![taxnames status
badge](https://kamapu.r-universe.dev/badges/taxnames)](https://kamapu.r-universe.dev/taxnames)
[![cran-downloads-total](http://cranlogs.r-pkg.org/badges/grand-total/taxnames)](https://cran.r-project.org/package=taxnames)
[![cran-downloads-month](http://cranlogs.r-pkg.org/badges/last-month/taxnames)](https://cran.r-project.org/package=taxnames)
<br>
[![R-CMD-check](https://github.com/kamapu/taxnames/workflows/R-CMD-check/badge.svg)](https://github.com/kamapu/taxnames/actions)
[![cran-checks](https://badges.cranchecks.info/worst/taxnames.svg)](https://cran.r-project.org/web/checks/check_results_taxnames.html)
[![codecov](https://codecov.io/gh/kamapu/taxnames/graph/badge.svg?token=CE6UI5SK68)](https://codecov.io/gh/kamapu/taxnames)
<br>
[![cran-doi](https://img.shields.io/badge/DOI-10.32614/CRAN.package.taxnames-blue.svg)](https://doi.org/10.32614/CRAN.package.taxnames)
<!-- badges: end -->

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

## Set a standard taxonomy

Before you continue, you will need to load the packages `taxlist` and
`taxnames` in your session.

``` r
library(taxlist)
library(taxnames)
```

The package `taxnames` uses a taxonomic object formatted by `taxlist`
and stored in the background. If you manage to import your taxonomic
list to `taxlist`, you can then set your own standard taxonomy.

``` r
set_tax(your_taxlist_object)
```

Per default `taxnames` takes the taxonomic list **Easplist** form the
package `taxlist`.

``` r
get_tax()
#> object size: 761.4 Kb 
#> validation of 'taxlist' object: TRUE 
#> 
#> number of taxon usage names: 5393 
#> number of taxon concepts: 3887 
#> trait entries: 311 
#> number of trait variables: 1 
#> taxon views: 3 
#> 
#> concepts with parents: 3698 
#> concepts with children: 1343 
#> 
#> hierarchical levels: form < variety < subspecies < species < complex < genus < family 
#> number of concepts in level form: 2
#> number of concepts in level variety: 95
#> number of concepts in level subspecies: 71
#> number of concepts in level species: 2521
#> number of concepts in level complex: 1
#> number of concepts in level genus: 1011
#> number of concepts in level family: 186
```

# Use case

## Accepted names

The main task of `taxnames` is to allow the formatting of taxonomic
names by linking documents to pre-formatted taxonomic lists. This avoids
typing errors (even experts make them) and allows reproducibility and
automation, especially for reporting on biodiversity.

We will select a target taxon using the keyword `"papyrus"`.

``` r
# Match 'papyrus' with the taxonomic list
summary(get_tax(), "papyrus")
#> ------------------------------ 
#> concept ID: 206 
#> view ID: 1 
#> level: species 
#> parent: 54853 Cyperus L. 
#> 
#> # accepted name: 
#> 206 Cyperus papyrus L. 
#> 
#> # synonyms (2): 
#> 52612 Cyperus papyrus ssp. antiquorum (Willd.) Chiov. 
#> 52613 Cyperus papyrus ssp. nyassicus Chiov. 
#> ------------------------------
```

We pick the correspondent taxon identifier **206**. Now we can use this
ID to mention the taxon.

    `r tn_fna(206)`, also known as papyrus, is a tall sedge
    growing in reed-like swamp vegetation in shallow water.
    `r tn_an(206)` has a very long history of use by humans as
    one of the first types of paper ever made.

This will be rendered as

> *Cyperus papyrus* L., also known as papyrus, is a tall sedge growing
> in reed-like swamp vegetation in shallow water. *C. papyrus* has a
> very long history of use by humans as one of the first types of paper
> ever made.

Functions provided by `taxnames` represent several formats for taxonomic
names.

| Description | Call | Output |
|----|----|----|
| Full name without author name | `tn_fn(206)` | *Cyperus papyrus* |
| Full name with author name | `tn_fna(206)` | *Cyperus papyrus* L. |
| Full name with author name and taxon view (secundum) | `tn_fnas(206)` | *Cyperus papyrus* L. sec. African Plant Database (2012) |
| Abbreviated name without author name | `tn_an(206)` | *C. papyrus* |
| Abbreviated name with author name | `tn_ana(206)` | *C. papyrus* L. |

## Synonyms

Analogous to them, there are functions defined for synonyms that format
names by their name ID (**TaxonUsageID**) rather than by their taxon ID
(**TaxonConceptID**). For example

    The synonymous of `r tn_fna(206)` are
    `r tn_funa(c(52612, 52613))`

Which is rendered as.

> The synonymous of *Cyperus papyrus* L. are *Cyperus papyrus* ssp.
> *antiquorum* (Willd.) Chiov. and *Cyperus papyrus* ssp. *nyassicus*
> Chiov.

| Description | Call | Output |
|----|----|----|
| Full usage name without author name | `tn_fun(52612)` | *Cyperus papyrus* ssp. *antiquorum* |
| Full usage name with author name | `tn_funa(52612)` | *Cyperus papyrus* ssp. *antiquorum* (Willd.) Chiov. |
| Abbreviated usage name without author name | `tn_aun(52612)` | *C. papyrus* ssp. *antiquorum* |
| Abbreviated usage name with author name | `tn_auna(52612)` | *C. papyrus* ssp. *antiquorum* (Willd.) Chiov. |

## Parental taxa

Last but not least, it is possible to query parental taxa with
additional functions (see the package manual). As a cross-check, we can
first look at the indented list.

``` r
indented_list(get_tax(), "papyrus")
#> Cyperaceae Juss.
#>  Cyperus L.
#>    Cyperus papyrus L.
```

The hierarchical classification can then be expressed in text as follows

    `r tn_fna(206)` belongs to the genus `r tn_pfna(206, "genus")` and
    to the family `r tn_pfna(206, "family", italics = FALSE)`

> *Cyperus papyrus* L. belongs to the genus *Cyperus* L. and to the
> family Cyperaceae Juss.
