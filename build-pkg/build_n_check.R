# TODO:   Working script for testing the package 'taxlist'
# 
# Author: Miguel Alvarez
################################################################################

library(devtools)
library(styler)
library(covr)
library(quarto)

# Clean session
rm(list = ls())

# Clean folder
unlink(file.path("build-pkg", list.files("build-pkg", ".tar.gz")))

# Write data
## source("data-raw/create-data.R")

# re-style scripts
style_pkg()

# write documentation
document()

# Build and check package
pkg_loc <- build(path = "build-pkg", args = "--resave-data")
check_built(path = pkg_loc)

# Render README
quarto_render("README.qmd")

# write manual
unlink(file.path("build-pkg", list.files("build-pkg", ".pdf")))
build_manual(path = "build-pkg")

# Check coverage
report()

# install the package
install()
