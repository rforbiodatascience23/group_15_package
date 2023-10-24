test_that("aa_translation returns expected aminoacids", {
  codons <- c("AUG", "CUA", "GUG", "GAG", "ACG")
  result <- aa_translation(codons)
  expected <- "MLVET"
  expect_equal(result, expected)
})




