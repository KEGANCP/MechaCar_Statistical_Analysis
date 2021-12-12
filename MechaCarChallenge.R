# load tidyverse 
library(tidyverse)

# Read CSV file as DF
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = F)

# generate linear regression with summary
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg )

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))

# Deliverable 2
# Read CSV file as DF
mechacar_suspensioncoil <- read.csv(file = 'Suspension_Coil.csv', check.names = F)
# Generate Mean, Median, Variance, & Std Dev of suspension coil PSI
total_summary <- mechacar_suspensioncoil %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), var_PSI=var(PSI),st_dev_PSI=sd(PSI), .groups = 'keep')
# Generate Mean, Median, Variance, & Std Dev of suspension coil PSI grouped by Lot
lot_summary <- mechacar_suspensioncoil %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), var_PSI=var(PSI), st_dev_PSI=sd(PSI), .groups='keep')

# Deliverable 3
t.test(mechacar_suspensioncoil$PSI, mu=1500)

t.test(subset(mechacar_suspensioncoil$PSI, mechacar_suspensioncoil$Manufacturing_Lot=='Lot1'), mu=1500)
t.test(subset(mechacar_suspensioncoil$PSI, mechacar_suspensioncoil$Manufacturing_Lot=='Lot2'), mu=1500)
t.test(subset(mechacar_suspensioncoil$PSI, mechacar_suspensioncoil$Manufacturing_Lot=='Lot3'), mu=1500)