#' @name tn_an
#' @rdname tn_an
#'
#' @title Standard formats for taxonomic names
#'
#' @description
#' Inserting formatted taxonomic names in documents require specific functions
#' for every formta, which are provided here.
#'
#' These functions print only accepted names for the selected taxon concepts.
#'
#' Add detailed description.
#'
#' @param x A vector containing selected identifiers for taxon concepts
#'     (**TaxonConceptID**) included in the internal taxonomic object
#'     (see [set_tax()]).
#' @param ... Further arguments passed to [print_name()].
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
