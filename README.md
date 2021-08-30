# MechaCar_Statistical_Analysis

## Linear Regression to Predict

•	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  The variables that provide a non-random amount of variance to the mpg values are vehicle length and ground clearance.

•	Is the slope of the linear model considered to be zero? Why or why not?
  No, because the P value of vehicle length and ground clearance are below .05.  This means the null hypothesis stating there is no relationship between the dependent and  independent variables can be rejected.

•	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  It does predict the mpg of MechaCar prototypes effectively as it explains 71.5% of the variance of MPG, as indicated by R squared.  However, there are some independent variables   that don’t provide meaningful value, arguably vehicle weight, and especially AWD and spoiler angle.  You can see this below, as our R Squared still explains 67.4 % of the  variance of MPG despite getting rid of 3 independent variables (Car Weight, AWD, and Spoiler):

![MechaCar Summary](https://user-images.githubusercontent.com/83877498/131271290-0de766b4-e2d4-4642-ad5b-2e9a8cf13fbc.PNG)

Figure 1: MerhaCar Summary

![image](https://user-images.githubusercontent.com/83877498/131271312-1c6e2a77-c35e-4d4a-9391-f1dcd2a80797.png)

Figure 2: Summary without of 3 independent variables (Car Weight, AWD, and Spoiler):

![image](https://user-images.githubusercontent.com/83877498/131271772-e1efaead-989e-4004-b01a-f43cdcc8a791.png)

Figure 3: MPG vs Vehicle Length

![image](https://user-images.githubusercontent.com/83877498/131271788-7a553132-d408-4a04-b1fc-48906e7c291e.png)

Figure 4: MPG vs Ground_Clearance

## Summary Statistics on Suspension Coils

• The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

  The current manufacturing data meets the design specifications to not exceed 100 pounds per square inch.  However, when looking at specific lots, Lot 1 and Lot 2 do meet the  design specification as their variance is well below 100 pounds per square inch but Lot 3 exceeds 100 pounds per square inch.
  
![image](https://user-images.githubusercontent.com/83877498/131271440-72ae7c94-1f0a-4e12-9078-6b5c9775c46b.png)

Figure 5: Total Summary

![image](https://user-images.githubusercontent.com/83877498/131271461-3e5e11d1-f225-4059-8d2d-25468af684c0.png)

Figure 6: Lot Summary

## T-Tests on Suspension Coils

• Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

![image](https://user-images.githubusercontent.com/83877498/131271541-5ed7e9e8-84fb-4cfd-908e-d23bcb0d4565.png)

Figure 7: T-test of total Summary

When looking at the all the lots together there is a high t-value and a low p-value, indicating that we can reject the null hypothesis as it is very likely that our means are different, as indicated by the larger t value.

![image](https://user-images.githubusercontent.com/83877498/131271571-ab263425-b1c9-4f96-80f8-2439ef18b408.png)

![image](https://user-images.githubusercontent.com/83877498/131271590-327d76cf-1479-4cc9-8c5a-8aca58c913f8.png)

Figure 8: T-test for Lot1

![image](https://user-images.githubusercontent.com/83877498/131271597-f4741992-5cd1-4e0f-8b46-6d3f2d119f73.png)

![image](https://user-images.githubusercontent.com/83877498/131271603-12fc34a7-a1a0-4269-9689-17b164ddf934.png)

Figure 9: T-test for Lot2

![image](https://user-images.githubusercontent.com/83877498/131271613-3085075e-5553-4f2b-a95c-8966797dfdc0.png)

![image](https://user-images.githubusercontent.com/83877498/131271617-30ce703c-73e5-471e-81ba-028b4e488a17.png)

Figure 10: T-test for Lot3

When looking at each lot individually however, the t-values are smaller and p-values are higher, meaning we can’t reject the null hypothesis.  This means that our means from our sample lots could be the same as the population mean.

## Study Design: MechaCar vs Competition.

•	What metric or metrics are you going to test?  
  It would be good to run a linear regression using cost as the dependent value and mpg (both city and highway), safety rating, and maintenance costs as independent variables.
  
•	What is the null hypothesis or alternative hypothesis?
  There is no significant relationship between vehicle cost and mpg, maintenance costs, and safety rating.

•	What statistical test would you use to test the hypothesis? And why?  
  We would do a multiple regression analysis to look at the relationship between the variables (R-Squared) as well as the p-value for each variable.  Then we would follow up with  a one sample t-test to compare our vehicles to the competition (industry averages).

•	What data is needed to run the statistical test?
  We would need data sets of our own vehicles, including mpg, costs, maintenance costs, and safety rating as well as the industry’s standards for similar style vehicles.  From  this we can calculate averages, standard deviations, p-values, R Squared.  One we perform a multiple linear regression we could then also compare to the industry averages using a one sample t-test.







