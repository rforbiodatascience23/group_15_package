

test_that("we can create DNA string",
          {expect_equal(nchar(create_DNA(3)), nchar("ABC"))})
