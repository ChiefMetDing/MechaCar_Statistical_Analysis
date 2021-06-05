# Load the dplyr package
library(dplyr)
library(tidyverse)

# Deliverable 1
# Read the 'MechaCar_mpg.csv' file
MechaCar_mpg <- read.csv('MechaCar_mpg.csv')

# Perform linear regression
linear_regression = lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg)
summary(linear_regression)

# Visualize the regression
d1_model <- linear_regression
yvals <- predict(d1_model, newdata = MechaCar_mpg)

# Plot the graph
plt <- ggplot(MechaCar_mpg,aes(x=mpg,y=yvals))
plt+geom_point()

# Deliverable 2
# Read the 'Suspension_coil.csv"
sus_coil <- read.csv('Suspension_Coil.csv')

# Create total summary table
total_summary <-  sus_coil %>% summarize(Mean = mean(PSI),Median=median(PSI),Variance = var(PSI),SD=sd(PSI))
total_summary$Manufacturing_Lot <- "Total"
total_summary <- total_summary[,c(5,1,2,3,4)]

# Create lot summary table
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD=sd(PSI))

# Combine two tables together for report
combined_summary <- rbind(total_summary,lot_summary)

# Deliverable 3
# t test on all manufacturing lots
t.test(sus_coil$PSI,mu=1500)

# t tests on individual lots
# Create a function takes lot name and mean as arguments.
t_lots <-  function(lot_name,mean){
  test_table = subset(sus_coil,Manufacturing_Lot==lot_name)
  t.test(test_table$PSI,mu=mean)
}

# Use the function to do t tests.
t_lots('Lot1',1500)
t_lots('Lot2',1500)
t_lots('Lot3',1500)
