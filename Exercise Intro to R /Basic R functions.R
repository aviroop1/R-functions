
# 1. read in the data from the file "swans.dat"
SwansData = read.table('swans.dat', header = TRUE)


#2. subset it using

  # a. the second row
SwansDataSubseta = SwansData[2,]

  # b. the third column
SwansDataSubsetb = SwansData[,3]

  # c. the entry in the second row and third column
SwansDataSubsetc = SwansData[2,3]

  # d. all swans with 6th col==1
SwansDataSubsetd = SwansData[SwansData[,6] == 1,]

  # e. all female swans
SwansDataSubsete = SwansData[SwansData$sex == 'F',]

  # f. all swans weighing more than 10 kg
SwansDataSubsetf = SwansData[SwansData$weight > 10, ]



# 3. make a copy swans:
SwansDataCopy = SwansData



# 4. take log of cheight column and add it to the copy of swans:
swans$cheight = log(SwansData$cheight)



# 5. compute summary statistics:min, 1st quartile, mean, median, 3rd quartile, max, 
# variance, standard deviation
summary(SwansData)



# 6. compute a COVARIANCE matrix 
covmatrix = cov(SwansData[,-8], swans[,-8])


# 7. compute a CORRELATION matrix:
cormatrix  = cor(SwansData[,-8], swans[,-8])


# 8. compute means, variances and standard deviations of the columns and store
# teh results in a matrix with properly labeled rows and columns
meanlist = colMeans(cormatrix[,1:7])
variancelist = apply(cormatrix[,1:7], MARGIN = 2, FUN = var)
stdDevlist = apply(cormatrix[,1:7], MARGIN = 2, FUN = sd)



# 9. summarize sex and age using table function: indiviaually and simultaneously:
table(SwansData$sex)
table(SwansData$age)
table(SwansData$sex, SwansData$age)



# 10. which of the variables are normally distributed? Answer this question by
# creating and interpreting a ni=ormal probability plots.






# 11. create stem-and-leaf plot for weight:





# 12. create histograms for each variable. what does parameter "breaks" do to the histogram?






# 13. visualize sex and and age using barcharts - individually and together:





# 14. create a bivariate plot of weight versus circumference; don't forget to label axes and create a title of the graph





# 15. plot only the female swans in the above graph:





# 16. plot all the swans but use M or F for the symbol:





# 17. in the above graph use color to distinguish gender:





# note that as.numeric(swans$sex) assigns numbers to the levels of 
# the categorical variable in alphabetical order, so that
# "M" is converted to 2 and "F" is converted to 1.
# We can change the colors to be whatever we like, in the following way:
plot(swans$circum,swans$weight,col=c("magenta","blue")[as.numeric(swans$sex)])
#
# and the available color names can be seen using the command:

colors()

# 18. compare male and female swans circum by creating side-by-side boxplots:





# 19. create all pairwise scatter plots to look at all variables:





# 20. color the above graphs using magneta and blue for females and males correspondingly:






# 21. fit a linear model to predict weight from circum





# 22. create the scatterplot between weight and circum and superimpose the above 
# regression line





# 23. create regression models separately for boys and girls:





# 24. graph all data, use magenta and blue colors to indicate gender and add both regression
# lines using corresponding colors






# 25. fit a multiple regression to predict weight from circum, wingspan, cwidth, cheight and sex





# 26. using summary function determine Rsquared, spread around the regression plane, 
# which variables are significant. 
