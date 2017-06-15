context("filter")

test_that("filter",

          {
              var = c("A", "B", "A")
              cb = vector("character", 0)
              expect_equal(3, sum(FilterVariable(var, cb)))
              cb = "B"
              expect_equal(1, sum(FilterVariable(var, cb)))
              cb = "A"
              expect_equal(2, sum(FilterVariable(var, cb)))
              cb = c("A", "B")
              expect_equal(3, sum(FilterVariable(var, cb)))
          })
