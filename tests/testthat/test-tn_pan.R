context("formating names")

test_that("names get formatted", {
  expect_type(tn_pfn(13, "family"), "character")
  expect_type(tn_pfna(13, "family"), "character")
  expect_type(tn_pfnas(13, "family"), "character")
  expect_type(tn_pan(13, "family"), "character")
  expect_type(tn_pana(13, "family"), "character")
})
