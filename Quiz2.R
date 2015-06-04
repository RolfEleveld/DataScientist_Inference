
#Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally distributed with a mean of 80 (mm Hg) and a standard deviation of 10. About what is the probability that a random 35-44 year old has a DBP less than 70?
pnorm(70, mean = 80, sd = 10, lower.tail = TRUE)

#Refer to the previous question. Brain volume for adult women is about 1,100 cc for women with a standard deviation of 75 cc. Consider the sample mean of 100 random adult women from this population. What is the 95th percentile of the distribution of that sample mean?
sd<- 75/sqrt(100)
qnorm(0.95, mean = 1100, sd = sd, lower.tail=TRUE)
pnorm(1112, mean = 1100, sd = sd, lower.tail=TRUE)
pnorm(1110, mean = 1100, sd = sd, lower.tail=TRUE)
pnorm(1088, mean = 1100, sd = sd, lower.tail=TRUE)
pnorm(1115, mean = 1100, sd = sd, lower.tail=TRUE)

#fair coin 4/5 heads out of 5
.5 * .5 * .5 * .5
pbinom(3,size=5,prob=.5, lower.tail=FALSE)

# The respiratory disturbance index (RDI), a measure of sleep disturbance, for a specific population has a mean of 15 (sleep events per hour) and a standard deviation of 10. They are not normally distributed. Give your best estimate of the probability that a sample mean RDI of 100 people is between 14 and 16 events per hour?
pnorm(16, mean = 15, sd = 10/sqrt(100), lower.tail=TRUE) - pnorm(14, mean = 15, sd = 10/sqrt(100), lower.tail=TRUE)

#The number of people showing up at a bus stop is assumed to be Poisson with a mean of  people per hour. You watch the bus stop for 3 hours. About what's the probability of viewing 10 or fewer people?
ppois(10, lambda=5*3, lower.tail=TRUE)


