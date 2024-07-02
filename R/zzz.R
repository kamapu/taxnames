# Set internal data
.onLoad <- function(libname, pkgname) {
  options(taxnames.data = taxlist::Easplist)
}
