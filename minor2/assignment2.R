#Annotated Notes
#Akram Sharshara

#Provided code for testing
> getwd()
[1] "/Users/akram/github/r"
> abalone<-read.csv("abalone.csv")
> attach(abalone)
> jpeg("mybadgraph.jpg",width=250,height=250,units="px")
> hist(Rings)

#dev.off() is used to turn off x11 graphic operation
> dev.off()

#------------------------------------------------------------
#Student code

#Initial Setup - testing working directory and identifying and attaching abalone.csv data
> getwd()
[1] "/Users/akram/github/r"
> abalone<-read.csv("abalone.csv")
> attach(abalone)

#Testing data input for total CSV
> head(abalone)
  Sex Length Diameter Height Whole.weight Shucked.weight Viscera.weight Shell.weight Rings
1   M  0.455    0.365  0.095       0.5140         0.2245         0.1010        0.150    15
2   M  0.350    0.265  0.090       0.2255         0.0995         0.0485        0.070     7
3   F  0.530    0.420  0.135       0.6770         0.2565         0.1415        0.210     9
4   M  0.440    0.365  0.125       0.5160         0.2155         0.1140        0.155    10
5   I  0.330    0.255  0.080       0.2050         0.0895         0.0395        0.055     7
6   I  0.425    0.300  0.095       0.3515         0.1410         0.0775        0.120     8

#Only need to test Rings to identify number of rings to figure out age
> head(Rings)
[1] 15  7  9 10  7  8

#Defined a set of data to find the age of the abalones.
> age<-Rings+1.5
> head(age)
[1] 16.5  8.5 10.5 11.5  8.5  9.5

#figure out max and min age to find range of graph
> summary(age)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   2.50    9.50   10.50   11.43   12.50   30.50 

#writing histogram code to JPEG image
> jpeg("mygoodgraph.jpg", width=1000, height=800, units="px")
> hist(age,breaks=c(seq(0,32,1)),main="",xlab="Age of Abalones (years)",ylab="Number of Abalones",density=50,col="Red")
> dev.off()
