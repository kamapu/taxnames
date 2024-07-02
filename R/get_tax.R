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
#' @param tax A [taxlist-class] object set as standard taxonomy.
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
