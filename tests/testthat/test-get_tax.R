context("set and get options")

test_that("options are retrieved", {
  expect_s4_class(get_tax(), "taxlist")
  expect_type(get_style(), "list")
})

# Secure options
tax <- get_tax()
style_opt <- get_style()

test_that("options are set", {
  expect_equal(
    {
      set_style(style = "html")
      get_style()$style
    },
    "html"
  )
  expect_equal(
    {
      set_style(collapse = "-")
      get_style()$collapse
    },
    "-"
  )
  expect_equal(
    {
      set_style(secundum = "bibtexkey")
      get_style()$secundum
    },
    "bibtexkey"
  )
})

# set options back
set_tax(tax)
with(style_opt, set_style(style, collapse, secundum))
