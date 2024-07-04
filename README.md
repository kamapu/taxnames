

- [taxnames](#taxnames)
- [Motivation](#motivation)
- [Get started](#get-started)
  - [Installing taxnames](#installing-taxnames)
  - [Set a standard taxonomy](#set-a-standard-taxonomy)
- [Use case](#use-case)

# taxnames

*insert badges here*

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
```

    object size: 761.4 Kb 
    validation of 'taxlist' object: TRUE 

    number of taxon usage names: 5393 
    number of taxon concepts: 3887 
    trait entries: 311 
    number of trait variables: 1 
    taxon views: 3 

    concepts with parents: 3698 
    concepts with children: 1343 

    hierarchical levels: form < variety < subspecies < species < complex < genus < family 
    number of concepts in level form: 2
    number of concepts in level variety: 95
    number of concepts in level subspecies: 71
    number of concepts in level species: 2521
    number of concepts in level complex: 1
    number of concepts in level genus: 1011
    number of concepts in level family: 186

# Use case

The main task of `taxnames` is to allow the formatting of taxonomic
names by linking documents to pre-formatted taxonomic lists. This avoids
typing errors (even experts make them) and allows reproducibility and
automation, especially for reporting on biodiversity.

We will select a target taxon using the keyword `"papyrus"`.

``` r
# Match 'papyrus' with the taxonomic list
summary(get_tax(), "papyrus")
```

    ------------------------------ 
    concept ID: 206 
    view ID: 1 
    level: species 
    parent: 54853 Cyperus L. 

    # accepted name: 
    206 Cyperus papyrus L. 

    # synonyms (2): 
    52612 Cyperus papyrus ssp. antiquorum (Willd.) Chiov. 
    52613 Cyperus papyrus ssp. nyassicus Chiov. 
    ------------------------------

``` r
# Show it in an indented list
indented_list(get_tax(), "papyrus")
```

    Cyperaceae Juss.
     Cyperus L.
       Cyperus papyrus L. 

We pick the correspondent taxon identifier **206**. Now we can use this
ID to mention the taxon.

    *Cyperus papyrus* L., also known as papyrus, is a tall sedge growing in reed-like swamp vegetation in shallow water.
    *C. papyrus* has a very long history of use by humans as one of the first types of paper ever made.

This will be rendered as

> *Cyperus papyrus* L., also known as papyrus, is a tall sedge growing
> in reed-like swamp vegetation in shallow water. *C. papyrus* has a
> very long history of use by humans as one of the first types of paper
> ever made.
