# Learning how to write functions

# function_name <- function(inputs) {
#   output_value <- do_something(inputs)
#   return(output_value)
# }
#          name function, specify what inputs are, 

calc_shrub_vol <- function(length, width, height) {
  area <- length * width
  volume <- area * height
  return(volume)
}

shrub_vol <- calc_shrub_vol(shrub_measurements$length[1], 2.5, 2)

shrub_measurements <- data.frame(lengths = c(12, 14),
                                 widths = c(2,3),
                                 heights = c(1.3, 8))
calc_shrub_vol(shrub_measurements$lengths[1],
               shrub_measurements$widths[1],
               shrub_measurements$height[1])

calc_shrub_vol(length = 0.8, width = 1.6, height = 2.0)
calc_shrub_vol(length = 0.8, height = 2.0, width = 1.6)


calc_shrub_vol <- function(length, width, height = 1) { #default created for height, all equal 1.
  area <- length * width
  volume <- area * height
  return(volume)
}




calc_shrub_vol(2,10)
calc_shrub_vol(2,10, height = 2)








# Exercise
get_mass_from_length_theropoda <- function(length) {
  mass <- 0.73 * length ^ 3.63
  return(mass)
}


# Question 1: Get mass of 16 m long dinosaur

get_mass_from_length_theropoda(16)


# Question 2: Turn a and b into arguments in function, then run
# for dinosaur that is 26 m in length, a = 214.44, b = 1.46
get_mass_from_length_theropoda <- function(length, a, b) {
  mass <- a * length ^ b
  return(mass)
}

get_mass_from_length_theropoda(26, 214.44, 1.46)

est_shrub_mass <- function(volume) {
  mass <- 2.6 * volume ^ 0.9
  return(mass)
}
shrub_vol <- calc_shrub_vol(2, 6, 2)
shrub_mass <- est_shrub_mass(shrub_vol)

library(dplyr)
shrub_mass <- calc_shrub_vol(2,6,2) %>%
  est_shrub_mass()

shrub_mass <- est_shrub_mass(calc_shrub_vol(1,3,10))
