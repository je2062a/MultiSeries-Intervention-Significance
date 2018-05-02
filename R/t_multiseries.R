t_multiseries <- function(x) {
  

  
# Create data frames for each individual series. 
for (i in (2:ncol(stock))){
    assign(paste('x', i, sep = ''), select(stock, 1, i))
  } 
  
# It seems that this is where the problem is. The function below, in beginning 
# its lapply loop, searches for an object "x2" that should be supplied by the 
# function above. When I run these manually, the above function creates several 
# independant data frames in the global environment, and then the lower function 
# references those. However, when the total function is run, it seems that the 
# upper function's output it not saved in the local environment. 

# List data frames.
tslist <- lapply(paste('x', seq(2,(ncol(stock))), sep=''), get)


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
return(t.test(pre_means, post_means))
}                   
 


            