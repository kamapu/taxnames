context("formating names")

test_that("names get formatted", {
      expect_type(tn_fn(13), "character")
      expect_type(tn_fna(13), "character")
      expect_type(tn_fnas(13), "character")
      expect_type(tn_an(13), "character")
      expect_type(tn_ana(13), "character")
    })
