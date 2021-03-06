# Intervention Significance on Multiple Time-Series

**multiseries_intervention** is a package of designed to provide simple analysis of multi-series intervention data. The package's functions serve the primary purpose of ennacting a t-test on the multiple-time-series samples to analyze whether there was a significant change in data correlated to the intervention. 

## Installation Procedure

Run this command in the R console:

```R
devtools::install_github("je2062a/MultiSeries-Intervention-Significance")
```
## Functions

### t_multiseries

The t_multiseries function is designed to analyze multiple time-series data. 
This function creates two groups of sample data from pre and post intervention 
averages, then compares those two distributions to assess whether there was a 
significant change in observations correlated to the intervntion.The function 
can only accept data that has already been synchronized to define time of 
intervention as t = 0 for all series. The t_multiseries function returns the
standard output of a t-test. 

#### License
This repository uses the EPL-2.0 license. 