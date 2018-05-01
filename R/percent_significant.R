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
dflist <- lapply(paste('x', seq(2,(ncol(stock))), sep=''), get)
}



lapply(list(df1, df2), function(w) { w$Avg <- rowMeans(w[1:2]); w })


d1 <- data.frame(y1=c(1,2,3), y2=c(4,5,6))
d2 <- data.frame(y1=c(3,2,1), y2=c(6,5,4))
d3 <- data.frame(y1=c(6,5,4), y2=c(3,2,1))
d4 <- data.frame(y1=c(9,9,9), y2=c(8,8,8))

my.list2 <- lapply(paste('d', seq(2,4,1), sep=''), get)
my.list2









