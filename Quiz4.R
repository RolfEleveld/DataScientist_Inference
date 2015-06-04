#A pharmaceutical company is interested in testing a potential blood pressure lowering medication. Their first examination considers only subjects that received the medication at baseline then two weeks later. The data are as follows (SBP in mmHg) 
#Subject,Baseline,Week 2
#1 140 132 
#2 138 135 
#3 150 151 
#4 148 146 
#5 135 130 
#Consider testing the hypothesis that there was a mean reduction in blood pressure? Give the P-value for the associated two sided T test. 
x<-c(140,138,150,148,135)
y<-c(132,135,151,146,130)
summary(lm(x~y))
t.test(x,y, paired=TRUE)

#A sample of 9 men yielded a sample average brain volume of 1,100cc and a standard deviation of 30cc. What is the complete set of values of  that a test of  would fail to reject the null hypothesis in a two sided 5% Students t-test?
mu0<-1100
sd0<-30
n<-9
mu0 + c(-1, 1) * qt(.975, n-1) * sd0 / sqrt(n)

#Researchers conducted a blind taste test of Coke versus Pepsi. Each of four people was asked which of two blinded drinks given in random order that they preferred. The data was such that 3 of the 4 people chose Coke. Assuming that this sample is representative, report a P-value for a test of the hypothesis that Coke is preferred to Pepsi using a one sided exact test.
pbinom(2, size = 4, prob = 0.5, lower.tail = FALSE)
#assuming an 50% changce and need more than 2 (3 in this case), and we want the upper tail out of 4 choices.

#Infection rates at a hospital above 1 infection per 100 person days at risk are believed to be too high and are used as a benchmark. A hospital that had previously been above the benchmark recently had 10 infections over the last 1,787 person days at risk. About what is the one sided P-value for the relevant test of whether the hospital is *below* the standard? 
ppois(10, 0.01*1787, lower.tail=TRUE)
#below 10, using 0.01 out of 1787 days and lower.tail as the below is required.

#Suppose that 18 obese subjects were randomized, 9 each, to a new diet pill and a placebo. Subjects’ body mass indices (BMIs) were measured at a baseline and again after having received the treatment or placebo for four weeks. The average difference from follow-up to the baseline (followup - baseline) was −3 kg/m2 for the treated group and 1 kg/m2 for the placebo group. The corresponding standard deviations of the differences was 1.5 kg/m2 for the treatment group and 1.8 kg/m2 for the placebo group. Does the change in BMI appear to differ between the treated and placebo groups? Assuming normality of the underlying data and a common population variance, give a pvalue for a two sided t test.
nx<-9
ny<-9
meanx<--3
meany<-1
sdx<-1.5
sdy<-1.8
sp <- sqrt(((nx-1) * sdx^2 + (ny-1) * sdy^2) / (nx + ny - 2))
interval0<-meanx-meany +c(-1,1) * qt(.975, (nx+ny-2))*(1/nx+1/ny)^(1/2)
pnorm(meanx + .95 * sp/sqrt(nx+ny), mean = meanx, sd = sp/sqrt(nx+ny), lower.tail = FALSE)
pnorm(meanx + .99 * sp/sqrt(nx+ny), mean = meanx, sd = sp/sqrt(nx+ny), lower.tail = FALSE)
qt(.05, 16, lower.tail=FALSE) * sdx+meanx - meany
qt(.01, 16, lower.tail=FALSE) * sdx+meanx - meany

#Researchers would like to conduct a study of  healthy adults to detect a four year mean brain volume loss of . Assume that the standard deviation of four year volume loss in this population is . About what would be the power of the study for a  one sided test versus a null hypothesis of no volume loss?
n<-100
h0loss<-0.01
sdloss<-0.04
#?power for 5% one sided test as opposed to no loss
power.t.test(n = n, delta = h0loss, sd = sdloss, type = "one.sample", alt = "one.sided")$power

#Researchers would like to conduct a study of  healthy adults to detect a four year mean brain volume loss of . Assume that the standard deviation of four year volume loss in this population is . About what would be the value of  needded for  power of type one error rate of  one sided test versus a null hypothesis of no volume loss?
#?looking for n
h0loss<-0.01
sdloss<-0.04
power_required <-.90
power.t.test(power = power_required, delta = h0loss, sd = sdloss, type = "one.sample", alt = "one.sided")$n
