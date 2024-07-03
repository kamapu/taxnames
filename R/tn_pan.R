#' @name tn_pan
#' @rdname tn_pan
#'
#' @title Print formatted names for parents
#'
#' @description
#' Displaying names of parent taxa.
#'
#' @param x A vector containing selected identifiers for taxon concepts
#'     (**TaxonConceptID**) included in the internal taxonomic object
#'     (see [set_tax()]).
#' @param level A character value indicating the taxon rank set for parent
#'     taxa. I is passed to [parents()].
#' @param ... Further arguments passed to [print_name()].
#'
#' @example examples/tn_pan.R
#'
#' @aliases tn_pfn
#'
#' @export
tn_pfn <- function(x, level, ...) {
  return(print_name(
    object = get_tax(), id = parents(get_tax(), level, x),
    include_author = FALSE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_pan
#' @aliases tn_pfna
#' @export
tn_pfna <- function(x, level, ...) {
  return(print_name(
    object = get_tax(), id = parents(get_tax(), level, x),
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_pan
#' @export
tn_pan <- function(x, level, ...) {
  return(print_name(
    object = get_tax(), id = parents(get_tax(), level, x),
    second_mention = TRUE,
    include_author = FALSE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_pan
#' @aliases tn_pana
#' @export
tn_pana <- function(x, level, ...) {
  return(print_name(
    object = get_tax(), id = parents(get_tax(), level, x),
    second_mention = TRUE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_pan
#' @aliases tn_pfnas
#' @export
tn_pfnas <- function(x, level, ...) {
  return(print_name(
    object = get_tax(), id = parents(get_tax(), level, x),
    style = get_style()$style, collapse = get_style()$collapse,
    secundum = get_style()$secundum, ...
  ))
}
