#' @title Convert temperature representations among common units
#' @description The function temperature_conversion() converts a numerical representation of temperature among three common units: Fahrenheit, Celsius and Kelvin.
#' @name temperature_conversion
#' @param input_unit Unit of the input temperature. The unit should be one of the strings from "C', "K", "F", "Celsius", "Kelvin" and "Fahrenheit".
#' @param output_unit Unit of the output temperature. The unit should also be one of the string from "C', "K", "F", "Celsius", "Kelvin" and "Fahrenheit". Same input and output units are not allowed, and will generate error messages.
#' @param  input_temp Input temperature before conversion. The input temperature can come from manual input to the function argument, or it can come from calling on data columns from datasets.
#' @return Temperature after conversion that is in the specified output unit.
#' @examples
#' temperature_conversion("Celsius", "Kelvin", 50)
#' temperature_conversion("K", "F", 50)
#' temperature_conversion("Celsius", "F", 50)
#' @export

temperature_conversion <- function(input_unit, output_unit, input_temp) {
  if (!((input_unit == "C") | (input_unit == "Celsius") | (input_unit == "K") | (input_unit == "Kelvin") | (input_unit == "F") | (input_unit == "Fahrenheit"))) {
    stop("Input unit invalid, must be one of Fahrenheit, Celsius, Kelvin or F, C, K")
  }
  if (!((output_unit == "C") | (output_unit == "Celsius") | (output_unit == "K") | (output_unit == "Kelvin") | (output_unit == "F") | (output_unit == "Fahrenheit"))) {
    stop("Output unit invalid, must be one of Fahrenheit, Celsius, Kelvin or F, C, K")
  }
  if ((input_unit == output_unit) & (input_unit == "K" | input_unit == "Kelvin" | input_unit == "C" | input_unit == "Celsius" | input_unit == "F" | input_unit == "Fahrenheit")) {
    stop("Input and Output units can not be the same, please enter again.")
  }
  if (is.na(input_unit)| is.na(output_unit) | is.na(input_temp)) {
    output_temp = NA_real_
  }

  else {
    output_temp = dplyr::case_when((input_unit == "C" | input_unit == "Celsius") & (output_unit == "K" | (output_unit == "Kelvin")) ~ input_temp + 273.15,
                                   (input_unit == "K" | input_unit == "Kelvin") & (output_unit == "C" | (output_unit == "Celsius")) ~ input_temp - 273.15,
                                   (input_unit == "F" | input_unit == "Fahrenheit") & (output_unit == "C" | (output_unit == "Celsius")) ~ (input_temp - 32) * 5 / 9,
                                   (input_unit == "C" | input_unit == "Celsius") & (output_unit == "F" | (output_unit == "Fahrenheit")) ~ (input_temp * 9 / 5) + 32,
                                   (input_unit == "F" | input_unit == "Fahrenheit") & (output_unit == "K" | (output_unit == "Kelvin")) ~ (input_temp - 32) * 5 / 9 + 273.15,
                                   (input_unit == "K" | input_unit == "Kelvin") & (output_unit == "F" | (output_unit == "Fahrenheit")) ~ ((input_temp - 273.15) * 9 / 5) + 32,

                                   TRUE ~ NA_real_)
  }
  return (output_temp)
}
