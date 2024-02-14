# script to compare somatosensory clusters in left and right hemisphere 

# question behind it: is there a lateralization in touch perception? 

# can be run both with the right/left vs baseline and the RvL/LvR contrasts. 



## Choices study - children analysis 

#Set Working Directory
setwd('/home/gurana93/mnt/p/userdata/gurana93/data/somatosensation/data_glm/secondlevel/')
#Load all libraries
# not all needed for this script, this is just a personal startup 
library(lme4)
library(ggthemes)
library(psych)
library(cowplot)
library(car)
library(tidyverse)
library(ggsignif)
library(ggplot2)
#install.packages("effects")
library(effects)
library(summarytools)
#install.packages("MuMIn")
library(MuMIn)
library(stats)

#install.packages('ResourceSelection')
library(ResourceSelection)
library(dplyr) 


#ImportStudyData
LeftCl1 <- read.csv("lvb_cluster1.csv", header = FALSE, sep = ";",  fileEncoding="latin1", dec = ".")
RightCl1 <- read.csv("rvb_cluster1.csv", header = FALSE, sep = ";",  fileEncoding="latin1", dec = ".")
RightCl2 <- read.csv("rvb_cluster2.csv", header = FALSE, sep = ";",  fileEncoding="latin1", dec = ".")

# create a data file with dogs as rows and columns for each cluster condition 

LeftCL1_bydog  <- rowMeans(LeftCl1,  na.rm = FALSE, dims = 1)
RightCL1_bydog <- rowMeans(RightCl1, na.rm = FALSE, dims = 1)
RightCL2_bydog <- rowMeans(RightCl2, na.rm = FALSE, dims = 1)


rightAll <- rowMeans(cbind(RightCL1_bydog, RightCL2_bydog), na.rm = FALSE, dims =1) # mean of both right clusters 
data <- data.frame(cbind(LeftCL1_bydog, RightCL1_bydog, RightCL2_bydog, rightAll))

######### LQ -###########
LQ <- (data$rightAll - data$LeftCL1_bydog)/(data$rightAll + data$LeftCL1_bydog)

## t-Test: is the mean ABSOLUTE LQ different from 0? 
absLQ <- abs(LQ)

t.test(absLQ)


#paired t-tests 
# 1) Compare Right 1 with Left 1 
t.test(data$RightCL1_bydog, data$LeftCL1_bydog, alternative = "two.sided", paired = TRUE, var.equal = FALSE)

# Paired t-test
# 
# data:  data$RightCL1_bydog and data$LeftCL1_bydog
# t = -0.49277, df = 15, p-value = 0.6293
# alternative hypothesis: true mean difference is not equal to 0
# 95 percent confidence interval:
#   -0.3606242  0.2251907
# sample estimates:
#   mean difference 
# -0.06771678 

# 2) Compare Right 2 with Left 1 
t.test(data$RightCL2_bydog, data$LeftCL1_bydog, alternative = "two.sided", paired = TRUE, var.equal = FALSE)

# Paired t-test
# 
# data:  data$RightCL2_bydog and data$LeftCL1_bydog
# t = 0.94052, df = 15, p-value = 0.3619
# alternative hypothesis: true mean difference is not equal to 0
# 95 percent confidence interval:
#   -0.2984529  0.7698528
# sample estimates:
#   mean difference 
# 0.2357 

# 3) Compare Right all with Left 1 
t.test(data$rightAll, data$LeftCL1_bydog, alternative = "two.sided", paired = TRUE, var.equal = FALSE)


# Paired t-test
# 
# data:  data$rightAll and data$LeftCL1_bydog
# t = 0.52402, df = 15, p-value = 0.6079
# alternative hypothesis: true mean difference is not equal to 0
# 95 percent confidence interval:
#   -0.2576438  0.4256270
# sample estimates:
#   mean difference 
# 0.08399159 



# dont sum the clusters in the right contrast up!! makes no sense 
# the mean of the two clusters needs to be made (which could be done altogether and is indeed done in rightAll)


#### 18.07.2023 FINAL 
lquotdata <- read.csv("lquot_anatomical_R.csv", header = TRUE, sep = ";",  fileEncoding="latin1", dec = ".")
y <- c(1:22)*0
result <- t.test(lquotdata$absLQ, y, alternative = "greater", paired = FALSE)
result

# for left lat
latL <- subset(lquotdata, lat ==1, select = absLQ)
y <- c(1:10)*0
resultL <- t.test(latL, y, alternative = "greater", paired = FALSE)
resultL

#for right lat 
latR <- subset(lquotdata, lat ==2, select = absLQ)
y <- c(1:9)*0
resultR <- t.test(latR, y, alternative = "greater", paired = FALSE)
resultR

#plot of Laterality values
lquotplot <- read.csv("laterality_forplotting.csv", header = TRUE, sep = ";",  fileEncoding="latin1", dec = ".")
plot(lquotplot$DogMeanLeft, lquotplot$DogMeanRight, col = lquotplot$sex)

data_plot <- as.data.frame(subset(lquotplot, select = c("DogMeanLeft", "DogMeanRight", "lat", "sex")))
data_plot$lat <- as.factor(as.character(data_plot$lat))
ggplot(data_plot, aes(x = DogMeanLeft, y = DogMeanRight, shape = sex, col = lat)) +
  geom_point(size = 2.8) + geom_vline(xintercept = 0, linetype="dotted") + geom_hline(yintercept = 0, linetype="dotted")
  #abline(h = 0, v = 0, col = "black", lty = 2)
  #scale_shape_manual(values = c(1, 2, 4))
# does not work? 
