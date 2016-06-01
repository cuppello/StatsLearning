#  5. Regressions

### 331 - 355 (335 now)

## Linear regression used for a) prediction, b) evaluating if there's linear rel
## Can only be used if there is linear rel, not curved
## y = b0 + b1x 
##   where x is explanatory or predictor var, b0 and b1 linear model parameters
## x can be used to predict y, or state what an average for y would be given x
## Residual is vertical distance from data point to line,
##    one aim of linear model is to minimise residuals
## Creating residual plot can indicate if linear model is inappropriate

## Linear models usually calculated by finding line of least squares
## This is line with lowest sum of squared residuals
## Squaring accounts for the fact that a residual twice as big 
##    is worse than twice as bad

wt <- mtcars$wt
mpg <- mtcars$mpg
model1 <- lm(mpg ~ wt) # creates linear model with x=wt and y=mpg
yfit1 <- model1$fitted.values # mpg values fitted to model
plot(wt, mpg) # scatterplot of data points
lines(wt, yfit1) # adds line of best fit based on wt and fitted mpg values
summary(model1) # Summary showing intercept (b0) and factor of wt (b1)
    # R-square = .75 showing 75% of variation in mpg can be exaplined by wt
    # p values < .05 suggest correlation is real and true slope less than 0 

resid <- mpg - yfit1 # calculates residuals
plot(wt, resid) # creates residual plot
#                 can't see obvious outliers or indication lm is inappropraite


#   a. Treating different types of variables in a regression 
#       (categorical v continuous)
#     i. Dummy variables ## Not sure what's meant by this

## Categorical data can be given numeric values
## lm as above can be used when only two categories

am <- mtcars$am
model2 <- lm(mpg ~ am)
yfit2 <- model2$fitted.values
plot(am, mpg)
lines(am, yfit2)
summary(model2) # here intercept is model value in 0 cond and 
#                   am factor is difference in 1 cond


#   b. Multiple
#     i. Different methods of regression (hierarchical, stepwise) 
#         advantages/disadvantages of each method

### 372 - 387


#   c. Demonstrable understanding of logistic regression

### 388 - 394