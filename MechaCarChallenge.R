##Deliverable 1: Linear Regression to Predict MPG
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

head(MechaCar_mpg)

lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

#Removal of uncorrelated variables

lm(mpg ~  vehicle_length + ground_clearance,data=MechaCar_mpg)

summary(lm(formula = mpg ~ vehicle_length + ground_clearance, data = MechaCar_mpg))

#Plotting of 2 variables
plot(MechaCar_mpg$mpg,MechaCar_mpg$vehicle_length)

plot(MechaCar_mpg$mpg,MechaCar_mpg$ground_clearance)


##Deliverable 2:Create Visualizations for the Trip Analysis

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

library(tidyverse)

head(Suspension_Coil)

#create total_summary dataframe using the summarize() function
total_summary <- Suspension_Coil  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#create lot_summary dataframe using the group_by() and the summarize() functions
lot_summary  <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


#Deliverable 3: T-Tests on Suspension Coils
#compare sample PSI across all manufacturing lots
set.seed(0)
totalLots <- c(rnorm(150, mean = 1498.78, sd = 7.892627))
t.test(totalLots, mu = 1500) #  mu = 1,500 pounds per square inch.


#T-test for Lot1
Lot1 <- c(rnorm(50, mean = 1500.00, sd = 0.9897433))
t.test(Lot1, mu = 1500) #  mu = 1,500 pounds per square inch.

#T-test for Lot2
Lot2 <- c(rnorm(50, mean = 1500.20, sd = 2.7330181))
t.test(Lot2, mu = 1500) #  mu = 1,500 pounds per square inch.

#T-test for Lot3
Lot3 <- c(rnorm(50, mean = 1496.14, sd = 13.0493725))
t.test(Lot3, mu = 1500) #  mu = 1,500 pounds per square inch.

