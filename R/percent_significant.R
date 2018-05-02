#' percent_significant
#' 
#' Calculates the percentage of time-series that experienced significant change 
#' due to an intervention.
#'  
#' This function provides simple analysis of multiple time-series data sets. 
#' This function requires the inclusion of a data set that defines the time of
#' intervention. The output of this function represents the percent of 
#' individual time-series that experienced a significant difference between 
#' pre-intervention and post-intervention data.
#' 
#'  @author James D. Ensor
#'  
#'  @param ts A data frame containing multiple time-series.
#'  @param df A data frame containing the time of intervention for each series.
#'  
#'  @return 
#'  
#'  @examples 
#'  
#'  @export



percent_significant <- function(ts, df) {
  
# Create list of columns in ts that contain non-date data.
num_of_col <- (2:ncol(stock))
  
  
# Create data frames for each individual series. 
for (i in num_of_col){
    assign(paste("x", i, sep = ""), select(stock, 1, i))
}
  

# List data frames.
tslist <- lapply(paste('x', seq(2,(ncol(stock))), sep=''), get)



# Split data by time of intervention
pre_list <- lapply(tslist, function(x) { filter(x, x[, 1] < 0)})
       
post_list <- lapply(tslist, function(x) { filter(x, x[, 1] > 0)})                   
                   
                   
}                   

                   
if ((colnames(x[, 2]) == df[, 1]) == (FALSE   


     
                   
       
# Calculate the mean of pre and post intervention data for each series
lapply(list(df1, df2), function(w) { w$Avg <- rowMeans(w[1:2]); w })









