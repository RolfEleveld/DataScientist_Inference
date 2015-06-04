# Student t interval
1100 + c(-1,1) * qt(.975,8)* 30/sqrt(9)

# nine subjects 6 weeks on diet to lose on average -2 pounds, what is the SD of the difference have to be to have top touch 0 
n<-9
lambda <- qt(.975,n-1)
meandiff <- -2
#sd_diff/sqrt(n) * lambda + meandiff = 0
sd_diff <- -1* meandiff/lambda * sqrt(n)

#In an effort to improve running performance, 5 runners were either given a protein supplement or placebo. Then, after a suitable washout period, they were given the opposite treatment. Their mile times were recorded under both the treatment and placebo, yielding 10 measurements with 2 per subject. The researchers intend to use a T test and interval to investigate the treatment. Should they use a paired or independent group T test and interval?
#Paired

# In a study of emergency room waiting times, investigators consider a new and the standard triage systems. To test the systems, administrators selected 20 nights and randomly assigned the new triage system to be used on 10 nights and the standard system on the remaining 10 nights. They calculated the nightly median waiting time (MWT) to see a physician. The average MWT for the new system was 3 hours with a variance of 0.60 while the average MWT for the old system was 5 hours with a variance of 0.68. Consider the 95% confidence interval estimate for the differences of the mean MWT associated with the new system. Assume a constant variance. What is the interval? Subtract in this order (New System - Old System).
nx<-10
ny<-10
varx<-.68
vary<-.6
varp<-((10-1)*varx+(10-1)*vary)/(10+10-2)
sdp<-sqrt(varp)
meanx<-3
meany<-5
meanx-meany+c(-1,1)*qt(.975,nx+ny-2)*sdp*(1/nx+1/ny)^(1/2)

#Suppose that you create a 95% T confidence interval. You then create a 90% interval using the same data. What can be said about the 90% interval with respect to the 95% interval?
#will be narrower

#To further test the hospital triage system, administrators selected 200 nights and randomly assigned a new triage system to be used on 100 nights and a standard system on the remaining 100 nights. They calculated the nightly median waiting time (MWT) to see a physician. The average MWT for the new system was 4 hours with a standard deviation of 0.5 hours while the average MWT for the old system was 6 hours with a standard deviation of 2 hours. Consider the hypothesis of a decrease in the mean MWT associated with the new treatment. What does the 95% independent group confidence interval with unequal variances suggest vis a vis this hypothesis? (Because there's so many observations per group, just use the Z quantile instead of the T.) 
qnorm(.95, mean = 6, sd = 2)
qnorm(.95, mean = 4, sd = .5)
#old-new is above 0 including 95% intervals


#Suppose that 18 obese subjects were randomized, 9 each, to a new diet pill and a placebo. Subjects’ body mass indices (BMIs) were measured at a baseline and again after having received the treatment or placebo for four weeks. The average difference from follow-up to the baseline (followup - baseline) was −3 kg/m2 for the treated group and 1 kg/m2 for the placebo group. The corresponding standard deviations of the differences was 1.5 kg/m2 for the treatment group and 1.8 kg/m2 for the placebo group. Does the change in BMI over the four week period appear to differ between the treated and placebo groups? Assuming normality of the underlying data and a common population variance, calculate the relevant *90%* t confidence interval. Subtract in the order of (Treated - Placebo) with the smaller (more negative) number first. 
nx<-9
ny<-9
meanx<--3
meany<-1
sdx<-1.5
sdy<-1.8
varx<-sdx^2
vary<-sdy^2
varp<-((nx-1)*varx+(ny-1)*vary)/(nx+ny-2)
sdp<-sqrt(varp)
meanx-meany+c(-1,1)*qt(.95,nx+ny-2)*sdp*(1/nx+1/ny)^(1/2)
