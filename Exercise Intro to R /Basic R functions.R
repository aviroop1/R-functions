
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

#normal probability plots are graphical method of checking for the normality of a distribution. 
#The normality of a distribution is indicated by how linear the line is

qqnorm(SwansData$circum)
#Almost linear line - circum variable has normally distributed values

qqnorm(SwansData$weight)
#Linear line - weight variable has normally distributed values

qqnorm(SwansData$wingspan)
#Not a linear line - hence wingspan values are not normallly distributed

qqnorm(SwansData$cwidth)
#Not a linear line - hence width values are not normally distributed

qqnorm(SwansData$cheight)
#Not a linear line - hence height values are not normally distributed





# 11. create stem-and-leaf plot for weight:

stem(SwansData$weight)
#From the below stem-and-leaf plot, we can see that most weight values lie between 65-70



# 12. create histograms for each variable. what does parameter "breaks" do to the histogram?
hist(SwansData$weight, breaks = 2)
