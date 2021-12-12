# MechaCar Statistical Analysis
----
### Project overview

AutosRus has enlisted my help to run an analysis specific to their "MechaCar" to better prepare avoid further production delays.
---- 
### Linear Regression to Predict MPG

<p align="center">
  <img src="https://github.com/KEGANCP/MechaCar_Statistical_Analysis/blob/main/Images/Linear_Regression_Summary.png" alt="LRSummary"/>
</p>

With the above analysis we are able to conclude the below:
- Both Vehicle Length and Ground Clearance provide a non-random variance to the MPG data
- Due to the p-value being significantly less, we can conclude the slope of the linear model is NOT considered to be zero.
- Given that the R-squared value is .7149, this confirms that there is indeed a greater than 70% chance that future data will fit this model. This verifies an effective prediction of MPG for MechaCar.


----
### Summary Statistics on Suspension Coils

<p align="center">
  <img src="https://github.com/KEGANCP/MechaCar_Statistical_Analysis/blob/main/Images/Mean_Med_Var_SD.png" alt="total_Summary_mean_Med_Var_SD"/>
</p>

The above is a summary dataframe showing the mean, median, variance and standard deviation of all lots.

<p align="center">
  <img src="https://github.com/KEGANCP/MechaCar_Statistical_Analysis/blob/main/Images/Lot_summary.png" alt="Lot_summary"/>
</p>

The dataframe above provides the same data, but shows the data specific to each lot.


With this information we can conclude that the coills meet the specifications of 100 PSI. with a further look when this data is broken down by lot we can see that lot 3 exceeds the variance well above the expected specs.


----
### T-Test on Suspension Coils

T-Test were conducted to determine if all lots vary statistically compared to the mean of 1500PSI.

#### T-Test of all Lots
<p align="center">
  <img src="https://github.com/KEGANCP/MechaCar_Statistical_Analysis/blob/main/Images/Total_Tst.png" alt="test_sum"/>
</p>
The above confirms that on average for all lots, they are not statiscally different from the mean. The p-value is not low enough to conclude or deny the null hypothesis. 

#### T-Test of Lot 1
<p align="center">
  <img src="https://github.com/KEGANCP/MechaCar_Statistical_Analysis/blob/main/Images/Lot1.png" alt="Lot1"/>
</p>
Data from Lot 1 confirms they are not statistically different from the mean.

#### T-Test of Lot 2
<p align="center">
  <img src="https://github.com/KEGANCP/MechaCar_Statistical_Analysis/blob/main/Images/Lot2.png" alt="Lot2"/>
</p>
Data from Lot 2 confirms they are not statistically different from the mean.

#### T-Test of Lot 3
<p align="center">
  <img src="https://github.com/KEGANCP/MechaCar_Statistical_Analysis/blob/main/Images/Lot3.png" alt="Lot3"/>
</p>
Data from Lot 3 confirms they are statistically different from the mean. The pvalue is low enough to reject the null hpothesis with p-value of .04168.
