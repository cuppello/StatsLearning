# Stats Learning

# 1. Checking for normality
# Normal = symmetric, unimodal, bell-shaped curve
# Check by eye first
hist(mtcars[,"hp"]) # not symetrical, not normal
hist(mtcars[,"drat"]) # seems to fit
# Test (e.g. kolmogorov-smirnov)
shapiro.test(mtcars[,"drat"]) # p>0.05 -> suggests normal

# 1a Parametric vs nonparametric
# Parametric: 
#     normal distribution, 
#     homogeneous variance, 
#     ratio (numbers can be compared as multiples of each other, 
#       zero important, e.g. age)  
#       or interval (equal gaps between points, can't be multiples, 
#       e.g. temperature in celsius) data,
#     MEAN usual central measure
# Non-parametric: 
#     any distribution/variance,
#     ordinal (rank, where gap between points is not same) 
#       or nominal (categorical) data, 
#     MEDIAN usual central measure
# Non-parametric tests: 
#     Mann-Whitney U (~t-test for independent measures), 
#     Wilcoxon signed rank (~t-test for repeated measures), 
#     Kruskal-Wallis H (~independent measures ANOVA, >2 groups), 
#     Friedman's (~repeated measures ANOVA: >2 groups), 
#     Spearman Rank (correlation)

# 2. Working with outliers
# Outliers to be expected
# Outliers can reflect genuine properties of variable, or experimental error 
#   (e.g. measurement error)
# Can have major effect on slope of regression lines
# Possible to remove outliers, or use "robust statistics", e.g. Median is 
#   consider robust, mean not; non-parametric more robust

Blsh blah blah whatever. R sucks i hate it