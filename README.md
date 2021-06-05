# MechaCar_Statistical_Analysis
M15 Challenge

## Deliverable 1: Linear Regression to Predict MPG
### Q1: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Answer: Vehicle length and ground clearance are the top two coefficients that provided non-random amount of variance to the mpg values in the dataset. As shown in the test result below (_Figure 1_), their Pr(>|t|) being low, means much less probability of contributing a random amount of variance to the mpg values.
### Q2: Is the slope of the linear model considered to be zero? Why or why not?
Answer: The slope is not considered to be zero. Because the p-value is way smaller than 0.05%. There is sufficient evidence to reject the null hypothesis.
### Q3: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Answer: Yes it does. The multiple R-squared is 0.7149 and the p-value is 5.35e-11. The high R-squared means the chance of prediction being close to actual is high. Also, the plotted prediction vs actual mpg shows clear trend of prediction being consistent.

_Figure 1: Linear Regression to Predict MPG by the Other 5 Variables_

![deliverable 1](https://user-images.githubusercontent.com/78275082/120901604-045b5880-c60a-11eb-86f6-e7ebeb818eef.png)

_Figure 2: Prediction vs Actual MPG_

![Deliverable_1_regression](https://user-images.githubusercontent.com/78275082/120901820-ff4ad900-c60a-11eb-9bf4-c81751cbb23e.png)

## Deliverable 2: Summary Statistics on Suspension Coils
The current manufacturing data does not meet the design specification for manufacturing lot3. Test results are shown in _Table 1_.

The variance of lot3 is 170.3, which is over the requirement of not exceeding 100 PSI. However, combining all samples, the overall variance passed the PSI variance requirement.

![deliverable 2](https://user-images.githubusercontent.com/78275082/120901876-53ee5400-c60b-11eb-972d-7239ba21c1b2.png)

_Table 1: Suspension Coil Statistics Summary_

## Deliverable 3: T-Test on Suspension Coils
H0: There is no statistical difference between the observed sample mean and its presumed population mean.

H1: There is a statistical difference between the observed sample mean and its presumed population mean.

For total: 
- P-value is 0.06 which is slightly greater than 0.05. We cannot reject H0.

For Lots:
- Lot1 p-value is 1. Keep H0. Do not have sufficient evidence to reject the null hypothesis.
- Lot2 p-value is 0.6. Keep H0. Do not have sufficient evidence to reject the null hypothesis.
- Lot3 p-value is 0.04. Reject H0. Do have sufficient evidence to reject the null hypothesis.

## Deliverable 4: MechaCar vs Competition
Metrics to test: city fuel efficiency.

Test: two-sample t-test

H0: The difference of city fuel efficiency between MechaCar and the competition is equal to zero.

H1: The difference of city fuel efficiency between MechaCar and the competition is not equal to zero.

When p-value is higher than 0.05, keep H0. There is no difference.
