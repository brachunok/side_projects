# 03.15.2017
#
# IDEA: create a function which takes in only the data 
# and does its best to 'clean' and pick the best model
#

# create test data ------------------------------------------------------------
covariates <- data.frame(x1=numeric(1000),x2=numeric(1000),
                         x3=numeric(1000),x4=logical(1000))

covariates$x1 <- runif(1000)
covariates$x2 <- runif(1000)
covariates$x3 <- runif(1000)
covariates$x4 <- rbinom(1000,1,1/2)

response <- covariates$x1*covariates$x2 + covariates$x3*covariates$x4


#' autoModel
#'
#' @param response the response variables 
#' @param covariates the predictors
#'
#' @return
#' @export
#'
#' @examples
#' 
autoModel <- function (response, covariates){
  
  
# clean ------------------------------------------------------------------------
  
  # convert to a data frame
  # TODO: make this more flexibie. There should be accomidations for various
  # types of data, widths etc...
  
  df <- data.frame(cbind(response,covariates))
  
  # impute data (if needed)
    # could this be probabilistic? Maybe a setting? ie if there are less than 10% 
    # non-fully-complete rows, there could be a setting to either delete them or 
    # to impute them? Could just be a setting to delete or impute?
  
  
  
  
  # return summary

# make some initial plots-------------------------------------------------------
  # could these be returned if a parameter is chosen?
  
  # correlation plot
  corrplot(cor(df))
  
  # distribution plot
  
  
  
# try models--------------------------------------------------------------------
  # it looks like MOST reasonible modeling packages allow for modeling with the 
  # formula interface. Assuming everything is being use
  #
  #
  # LM 
  
  # GLM
  
  # GAM
  
  # MARS
  
  # CART
  
  # RF
  
  
  # summarize performance
  
}