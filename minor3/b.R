#identify, attach and test backpack data
> backpack<-read.table("backpacks.txt", header=TRUE)
> attach(backpack)
> head(backpack)

#draw boxplots
> boxplot(backpack.weight[Sex=="Male"], backpack.weight[Sex=="Female"], names=c("Male","Female"), las=1, xlab="Gender", ylab="Backpack Weight")
> boxplot(body.weight[Sex=="Male"], body.weight[Sex=="Female"], names=c("Male","Female"), las=1, xlab="Gender", ylab="Body Weight")

#mean and median calculations for figure label (repeated for body.weight)
> tapply(backpack.weight,Sex,mean)
> tapply(backpack.weight,Sex,median)
> mean(backpack.weight)
> median(backback.weight)

#testing normality 
> tapply(body.weight,Sex,shapiro.test)
> tapply(backpack.weight,Sex,shapiro.test)

#stats tests (repeated for body.weight) (both had the exact same tests)
> tapply(backpack.weight,Sex,shapiro.test)
> var.test(backpack.weight~Sex)
> t.test(backpack.weight~Sex, var.equal=T)

