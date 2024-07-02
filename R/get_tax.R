#' @name get_tax
#' @rdname get_tax
#'
#' @title Get or set a global taxonomy
#'
#' @description
#' For convenience and to simplify the call of name formats, the containing
#' object (a [taxlist-class] object) will be handled internally by all
#' functions.
#'
#' A standard taxonomic list is already set in this package and can be retrieved
#' or replaced.
#'
#' The function `set_style()` sets the style for the formatted names (default
#' `"markdown"`) and the standard collapse connectors.
#'
#' @param tax A [taxlist-class] object set as standard taxonomy.
#' @param style A character value setting the format style. It is passed to
#'     the homonimous parameter in [print_name()].
#' @param collapse A character vector (lenght 1 or 2) setting the collapse
#'     connectors for multiple names. It is passed to the homonimous parameter
#'     in [print_name()].
#' @param secundum A character value indicating the name of the colum in slot
#'     **taxonViews** of the internal object, which will be used to indicate
#'     the respective taxon view.
#'
#' @example examples/get_tax.R
#'
#' @aliases set_tax
#' @export
set_tax <- function(tax) {
  UseMethod("set_tax")
}

#' @rdname get_tax
#' @aliases set_tax,taxlist-method
#' @export
set_tax.taxlist <- function(tax) {
  options(taxnames.data = tax)
}

#' @rdname get_tax
#' @export
get_tax <- function() {
  return(getOption("taxnames.data"))
}

#' @rdname get_tax
#' @aliases set_style
#' @export
set_style <- function(style, collapse, secundum) {
  if (!missing(style)) {
    options(taxnames.style = style)
  }
  if (!missing(collapse)) {
    options(taxnames.collapse = collapse)
  }
  if (!missing(secundum)) {
    options(taxnames.secundum = secundum)
  }
}

#' @rdname get_tax
#' @aliases get_style
#' @export
get_style <- function() {
  return(list(
    style = getOption("taxnames.style"),
    collapse = getOption("taxnames.collapse"),
    secundum = getOption("taxnames.secundum")
  ))
}
