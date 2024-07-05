#' @name tn_an
#' @rdname tn_an
#'
#' @title Standard formats for accepted names
#'
#' @description
#' Inserting formatted taxonomic names in documents require specific functions
#' for every format, which are provided here.
#'
#' These functions print only accepted names for the selected taxon concepts.
#'
#' Suffixes in the function names are explained as follows:
#'
#' - **fn:** Full name without author name.
#' - **fna:** Full name with author name.
#' - **fnas:** Full name with author name and taxon view (secundum).
#' - **an:** Abbreviated name without author name.
#' - **ana:** Abbreviated name with author name.
#'
#' @param x A vector containing selected identifiers for taxon concepts
#'     (**TaxonConceptID**) included in the internal taxonomic object
#'     (see [set_tax()]).
#' @param ... Further arguments passed to [taxlist::print_name()].
#'
#' @return
#' All these functions return a character value.
#'
#' @example examples/tn_an.R
#'
#' @aliases tn_fn
#'
#' @export
tn_fn <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x, include_author = FALSE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_an
#' @aliases tn_fna
#' @export
tn_fna <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_an
#' @aliases tn_fnas
#' @export
tn_fnas <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x,
    style = get_style()$style, collapse = get_style()$collapse,
    secundum = get_style()$secundum, ...
  ))
}

#' @rdname tn_an
#' @export
tn_an <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x, second_mention = TRUE,
    include_author = FALSE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_an
#' @aliases tn_ana
#' @export
tn_ana <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x, second_mention = TRUE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}
