test_that("lib_summary returns expected results", {
  #first create an object to test
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
  expect_error(lib_summary("foo"))
})

test_that("sizes argument works", {
  res<- lib_summary(sizes = TRUE)
  expect_equal(ncol(res),3)
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  expect_type (res$lib_size, "double")
})

