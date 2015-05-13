#install.packages('gdata')
require (gdata)

#con<-download.file("http://mathforum.org/workshops/sum96/data.collections/datalibrary/colleges.XL.zip.xls", "~/Downloads/tst.xls",method="curl")
dta<-read.xls("~/Downloads/tst.xls", skip=1)

# Multiple Linear Regression Example 
fit <- lm(Graduation.rate ~ ACT , data=dta)

plot(dta$ACT, dta$Graduation.rate)
abline(fit)
