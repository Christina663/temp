test_that("Different input types", {
  expect_equal(temperature_conversion("Celsius", "Kelvin", 100), 373.15 , tolerance = 1e-4)
  expect_equal(temperature_conversion("F", "C", 50), 10, tolerance = 1e-4)
  expect_equal(temperature_conversion("Kelvin", "F", 10), -441.67, tolerance = 1e-4)

})

test_that("NA input data values", {
  expect_equal(temperature_conversion("Kelvin", "C", NA), NA_real_)

})

test_that("Invalid input_unit or output_unit", {
  expect_error(temperature_conversion("Kelvin", "Cels", 10))
})

test_that("Same input_unit and output_unit", {
  expect_error(temperature_conversion("K", "K", 10))
})
