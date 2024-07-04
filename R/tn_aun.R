#' @name tn_aun
#' @rdname tn_aun
#'
#' @title Standard formats for taxonomic names
#'
#' @description
#' These functions work similarly to [tn_an()] and its alies but the names
#' are accessed by their **TaxonUsageID** and work also for synonyms.
#'
#' Suffixes in the function names are explained as follows:
#'
#' - **fun:** Full usage name without author name.
#' - **funa:** Full usage name with author name.
#' - **aun:** Abbreviated usage name without author name.
#' - **auna:** Abbreviated usage name with author name.
#'
#' @param x A vector containing selected identifiers for taxon names
#'     (**TaxonUsageID**) included in the internal taxonomic object
#'     (see [set_tax()]).
#' @param ... Further arguments passed to [taxlist::print_name()].
#'
#' @example examples/tn_aun.R
#'
#' @aliases tn_fun
#'
#' @export
tn_fun <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x, concept = FALSE, include_author = FALSE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_aun
#' @aliases tn_funa
#' @export
tn_funa <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x, concept = FALSE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_aun
#' @export
tn_aun <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x, concept = FALSE, second_mention = TRUE,
    include_author = FALSE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}

#' @rdname tn_aun
#' @aliases tn_auna
#' @export
tn_auna <- function(x, ...) {
  return(print_name(
    object = get_tax(), id = x, concept = FALSE, second_mention = TRUE,
    style = get_style()$style, collapse = get_style()$collapse, ...
  ))
}
