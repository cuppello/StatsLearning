# 4. Mean Difference
#   a.
#     i T-tests
## comparison of two means where normality assumed

## Test for normality
hist(mtcars[,"qsec"])
shapiro.test(mtcars[,"qsec"]) # Suggest data is normal

## independent groups with factor variable (am)
t.test(mtcars[,"qsec"] ~ mtcars[,"am"]) # no sig diff

## independent groups as two separate vectors
v0 <- mtcars[mtcars$am == 0, "qsec"] # qsec where am = 0
v1 <- mtcars[mtcars$am == 1, "qsec"] # qsec where am = 1
t.test(v0,v1) # same result

## if repeated measures use: t.test(v0,v1,paired=TRUE)


#     ii Mann Whitney
## comparison of two means where normality not assumed

## Test for normality
hist(mtcars[,"mpg"]) # Suggest data is not normal

wilcox.test(mtcars[,"mpg"] ~ mtcars[,"am"]) # manual cars have sig higher mpg


#   b. ANOVA / Kruskal-Wallis
#     i. Post-hoc analyses

## ANOVA similar to t-test but for multiple samples
## Kruskal-wallkis similar to Mann Whitney but for multiple samples

## ANOVA - normality assumed
plot(airquality$Wind , airquality$Month) # sample to be analysed
aov1 <- aov(Wind ~ Month, data = airquality) # put in variable for summary
summary(aov1) # sig diff between months, i.e. not one population
## Posthoc, e.g. bonferoni
pairwise.t.test(airquality$Wind , airquality$Month, p.adj = "bonf")
## shiows sig dif between months 5/7, 5/8
## Bonferoni tests adjust for multiple comparisons

## Kruskal-Wallis - normality not assumed
kwt1 <- kruskal.test(Ozone ~ Month, data = airquality)
kwt1 # sig, as it was with ANOVA. nb: 6.901e-06 = 6.901*10^-6 = 0.000006901
## Posthoc, e.g. bonferoni
pairwise.wilcox.test(airquality$Ozone, airquality$Month, 
                     p.adj="bonferroni",exact=F) # exact deals with ties
## shows sig dif beween months 5/7, 5/8, 9/6, 9/7

## More complex ANOVAs
## y~x1	      y is explained by x1 only, a one-way anova
## y~x1+x2	  y is explained by x1 and x2, a two-way anova
## y~x1+x2+x3	y is explained by x1, x2 and x3, a 3-way anova
## y~x1*x2	  y is explained by x1, x2 and also by the interaction between them



#   c. ANCOVA
## ANCOVA is similar to ANOVA but factors in a covariate, i.e. a variable
##    that is also assumed to explain part of variance in DV
## Assumed that Cov is independent of IV, i.e. t-test of CoV between IV groups
##    would be insig
## Need to read up on this
## Revisit after corelation and regression bit

