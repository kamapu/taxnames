# Set internal data
.onLoad <- function(libname, pkgname) {
  options(
    taxnames.data = taxlist::Easplist,
    taxnames.style = "markdown",
    taxnames.collapse = c(", ", " and "),
    taxnames.secundum = "secundum"
  )
}
