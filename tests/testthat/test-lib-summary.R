test_that("lib_summary returns expected results", {
  #first create object to test
  res <- lib_summary()
  #test to make sure it is a dataframe
  expect_s3_class(res, "data.frame")
  #make sure it has two
  expect_equal(ncol(res),2)
  expect_equal(names(res), c("Library", "n_packages"))
  expect_type (res$Library, "character")
  expect_type (res$n_packages, "integer")
})

test_that("lib_summary fails appropriately", {
  expect_error(lib_summary("foo"), "unused argument")
})
