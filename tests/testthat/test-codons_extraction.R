test_that("from a given sequence, codons are extracted", {
  sequence <- "ATGCATCTAGTAGCAGTAC"
  result <- codons_extraction(sequence)
  expected <- c("ATG", "CAT", "CTA", "GTA", "GCA", "GTA")
  expect_equal(result, expected)
})
