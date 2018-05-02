#' t_multiseries
#' 
#' Calculates the percentage of time-series that experienced significant change 
#' due to an intervention.
#'  
#' This function provides simple analysis of multiple time-series data sets. 
#' this function requires that the time-series data be pre-synchronized so that
#' time of intervention is zero (t = 0) for all series. The function returns the
#' same results as a regualr t-test, where the p-value relates how likely the 
#' post-intervention data was unaffected by the intervention.
#' 
#'  @author James D. Ensor
#'  
#'  @param x A data frame containing multiple time-series.
#'    
#'  @examples percent_significant()  
#'  
#'  @export



t_multiseries <- function(x) {
  

  
# Create data frames for each individual series. 
for (i in (2:ncol(x))){
    assign(paste('x', i, sep = ''), select(x, 1, i))
} 
  

# List data frames.
tslist <- lapply(paste('x', seq(2,(ncol(x))), sep=''), get)


# Split data by time of intervention.
pre_list <- lapply(tslist, function(y) { filter(y, y[, 1] < 0)})
       
post_list <- lapply(tslist, function(y) { filter(y, y[, 1] > 0)})



# Drop time column.
pre_list <- lapply(pre_list, function(z) { z[1] <- NULL; z })

post_list <- lapply(post_list, function(z) { z[1] <- NULL; z })



# Calculate the mean of pre and post intervention data for each series
pre_means <- lapply(pre_list, function(w) { colMeans(w)})

post_means <- lapply(post_list, function(w) { colMeans(w)})
                   

# Reduce listed data frames to a list.
pre_means <- (do.call(rbind, pre_means))[, 1]
  
post_means <- (do.call(rbind, post_means))[, 1]


# Calculate the p-value.
t.test(pre_means, post_means)
}                   
 


            