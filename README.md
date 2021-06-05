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
