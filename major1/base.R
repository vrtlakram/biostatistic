#Start of program, new working directory previously set

#Assigned Variable name to random sample generator, sample generator assigns 40 random pages
> randompage<-sample(1:631,40)

#Sorted randompage variable set in order
> sort(randompage)

#Define CSV for reading and attach for testings
> dict1<-read.csv("dict1.csv")
> attach(dict)

#Basic info about data for step 3
> summary(dict1)

#Using the plotrix package, standard error was calculated  ---- (sd/sqrt(n))
> std.error(nouns) #repeated for adjectives, verbs and other

#Shapiro wilks test is performed to determine normality. Nouns have passed!
> shapiro.test(nouns) #repeated for adjectives, verbs and other

#t.test to determine confidence levels at 95%
> t.test(nouns,mu=0.60440,conf.level=0.95) #repeated for adjectives, verbs and other

#OED's predictions within confidence limits of user sample, use this power.t.test to determine power and type II error occurance percentage
> power.t.test(n=40,delta=mean(nouns)-0.55,type="one.sample",sd=sd(nouns)) #repeated for verbs

#OED's predictions out off confidence limits of user sample, use this power.t.test to determine power and determine minimum sample size
> power.t.test(delta=mean(other)-0.06, sd=sd(other), power=0.8, type="one.sample", n=NULL) #repeated for adjectives

#Shapiro Wilk test used to determine normality
> shapiro.test(nouns) #repeated for adjectives, verbs and other

#boxplot displaying frequency of data set
> boxplot(nouns, adjectives, verbs, other, xlab="nouns, adjectives, verbs, other", ylab="frequency")

#all previous steps repeated using known, heard and not data except within confidence limits section

#Known, heard and Non
#histogram data
> hist(known, breaks=30)



