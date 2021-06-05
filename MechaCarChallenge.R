# Load the dplyr package
library(dplyr)

# Read the 'MechaCar_mpg.csv' file
MechaCar_mpg <- read.csv('MechaCar_mpg.csv')

# Perform linear regression
linear_regression = lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg)
summary(linear_regression)
