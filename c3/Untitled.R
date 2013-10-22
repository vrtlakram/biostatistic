
R version 3.0.1 (2013-05-16) -- "Good Sport"
Copyright (C) 2013 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin10.8.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.61 (6492) x86_64-apple-darwin10.8.0]

[Workspace restored from /Users/akram/.RData]
[History restored from /Users/akram/.Rapp.history]

> getwd()
[1] "/Users/akram/github/r"
> ?binom.test
starting httpd help server ... done
> binom.test(x=18,n=100,p=0.25,alternative="two.sided")

	Exact binomial test

data:  18 and 100
number of successes = 18, number of trials = 100,
p-value = 0.1324
alternative hypothesis: true probability of success is not equal to 0.25
95 percent confidence interval:
 0.1103112 0.2694771
sample estimates:
probability of success 
                  0.18 

> binom.test(x=18,n=100,p=0.25,alternative="less")

	Exact binomial test

data:  18 and 100
number of successes = 18, number of trials = 100,
p-value = 0.06301
alternative hypothesis: true probability of success is less than 0.25
95 percent confidence interval:
 0.0000000 0.2551449
sample estimates:
probability of success 
                  0.18 

> binom.test(x=18,n=100,p=0.25,alternative="greater")

	Exact binomial test

data:  18 and 100
number of successes = 18, number of trials = 100,
p-value = 0.9624
alternative hypothesis: true probability of success is greater than 0.25
95 percent confidence interval:
 0.1196908 1.0000000
sample estimates:
probability of success 
                  0.18 

> binom.test(x=180,n=1000,p=0.25,alternative="two.sided")

	Exact binomial test

data:  180 and 1000
number of successes = 180, number of trials = 1000,
p-value = 1.359e-07
alternative hypothesis: true probability of success is not equal to 0.25
95 percent confidence interval:
 0.1566581 0.2052425
sample estimates:
probability of success 
                  0.18 

> prop.test(18,100,p=0.25)

	1-sample proportions test with continuity
	correction

data:  18 out of 100, null probability 0.25
X-squared = 2.2533, df = 1, p-value = 0.1333
alternative hypothesis: true p is not equal to 0.25
95 percent confidence interval:
 0.1129588 0.2722406
sample estimates:
   p 
0.18 

> ?mtcars
> head(mtcars)
                   mpg cyl disp  hp drat    wt  qsec vs
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0
Valiant           18.1   6  225 105 2.76 3.460 20.22  1
                  am gear carb
Mazda RX4          1    4    4
Mazda RX4 Wag      1    4    4
Datsun 710         1    4    1
Hornet 4 Drive     0    3    1
Hornet Sportabout  0    3    2
Valiant            0    3    1
> head(mtcars)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
> attach(mtcars)
> summary(qsec)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  14.50   16.89   17.71   17.85   18.90   22.90 
> hist(qsec)
> ?t.test
> t.test(qsec)

	One Sample t-test

data:  qsec
t = 56.5031, df = 31, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
 17.20449 18.49301
sample estimates:
mean of x 
 17.84875 

> #2013 Prius qsec=17.1
> #H0: qsec of '73 cars = 17.1
> #Ha: qsec of '73 cars != 17.1
> t.test(qsec,mu=17.1)

	One Sample t-test

data:  qsec
t = 2.3703, df = 31, p-value = 0.02418
alternative hypothesis: true mean is not equal to 17.1
95 percent confidence interval:
 17.20449 18.49301
sample estimates:
mean of x 
 17.84875 

> t.test(qsec,mu=17.1, conf.level=0.99)

	One Sample t-test

data:  qsec
t = 2.3703, df = 31, p-value = 0.02418
alternative hypothesis: true mean is not equal to 17.1
99 percent confidence interval:
 16.98193 18.71557
sample estimates:
mean of x 
 17.84875 

> t.test(qsec,mu=17.1, alternative="greater")

	One Sample t-test

data:  qsec
t = 2.3703, df = 31, p-value = 0.01209
alternative hypothesis: true mean is greater than 17.1
95 percent confidence interval:
 17.31315      Inf
sample estimates:
mean of x 
 17.84875 

> t.test(qsec,mu=17.1, alternative="less")

	One Sample t-test

data:  qsec
t = 2.3703, df = 31, p-value = 0.9879
alternative hypothesis: true mean is less than 17.1
95 percent confidence interval:
     -Inf 18.38435
sample estimates:
mean of x 
 17.84875 

> shapiro.test(qsec)

	Shapiro-Wilk normality test

data:  qsec
W = 0.9733, p-value = 0.5935

> ?shapiro.test
> t.test(qsec,mu=17.7)

	One Sample t-test

data:  qsec
t = 0.4709, df = 31, p-value = 0.641
alternative hypothesis: true mean is not equal to 17.7
95 percent confidence interval:
 17.20449 18.49301
sample estimates:
mean of x 
 17.84875 

> ?power.test
No documentation for ‘power.test’ in specified packages and libraries:
you could try ‘??power.test’
> ?power.test()
Error in .helpForCall(topicExpr, parent.frame()) : 
  no methods for ‘power.test’ and no documentation for it as a function
> ?power.t.test()
> power.t.test(n=32,delta=mean(qsec)-17.7,sd=sd(qsec),type="one.sample")

     One-sample t test power calculation 

              n = 32
          delta = 0.14875
             sd = 1.786943
      sig.level = 0.05
          power = 0.0663595
    alternative = two.sided

> power.t.test(n=32,delta=mean(qsec)-17.1,sd=sd(qsec),type="one.sample")

     One-sample t test power calculation 

              n = 32
          delta = 0.74875
             sd = 1.786943
      sig.level = 0.05
          power = 0.6317334
    alternative = two.sided

> power.t.test(power=0.8,delta=mean(qsec)-17.1,sd=sd(qsec),type="one.sample")

     One-sample t test power calculation 

              n = 46.66211
          delta = 0.74875
             sd = 1.786943
      sig.level = 0.05
          power = 0.8
    alternative = two.sided

> power.t.test(power=0.8,n=32,sd=sd(qsec),type="one.sample")

     One-sample t test power calculation 

              n = 32
          delta = 0.9136154
             sd = 1.786943
      sig.level = 0.05
          power = 0.8
    alternative = two.sided

> hist(hp)
> shapiro.test(hp)

	Shapiro-Wilk normality test

data:  hp
W = 0.9334, p-value = 0.04881

> mean(hp)
[1] 146.6875
> var(hp)
[1] 4700.867
> logp<-log10(hp)
> hist(loghp)
Error in hist(loghp) : object 'loghp' not found
> attach(loghp)
Error in attach(loghp) : object 'loghp' not found
> hist(logp)
> shapiro.test(logp)

	Shapiro-Wilk normality test

data:  logp
W = 0.9703, p-value = 0.5065

> ?shapiro.test
> t.test(logp, mu=log10(110))

	One Sample t-test

data:  logp
t = 2.1597, df = 31, p-value = 0.03864
alternative hypothesis: true mean is not equal to 2.041393
95 percent confidence interval:
 2.045779 2.194603
sample estimates:
mean of x 
 2.120191 

> ?wilcox.test
> wilcox.test(hp)

	Wilcoxon signed rank test with continuity correction

data:  hp
V = 528, p-value = 8.27e-07
alternative hypothesis: true location is not equal to 0

Warning message:
In wilcox.test.default(hp) : cannot compute exact p-value with ties
> wilcox.test(hp,alternative="two.sided", mu=110)

	Wilcoxon signed rank test with continuity correction

data:  hp
V = 332, p-value = 0.01366
alternative hypothesis: true location is not equal to 110

Warning messages:
1: In wilcox.test.default(hp, alternative = "two.sided", mu = 110) :
  cannot compute exact p-value with ties
2: In wilcox.test.default(hp, alternative = "two.sided", mu = 110) :
  cannot compute exact p-value with zeroes
> 