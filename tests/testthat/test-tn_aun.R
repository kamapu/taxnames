context("formating names")

test_that("names get formatted", {
  expect_type(tn_fun(52613), "character")
  expect_type(tn_funa(52613), "character")
  expect_type(tn_aun(52613), "character")
  expect_type(tn_auna(52613), "character")
})
