#install.packages('gdata')
require (gdata)

# 1 -- GET THE FILE AND SAVE IT (1993 College information)
#con<-download.file("http://mathforum.org/workshops/sum96/data.collections/datalibrary/colleges.XL.zip.xls", "~/Downloads/tst.xls",method="curl")

# 2 -- READ THE EXCEL FILE AND CREATE A DATAFRAME
dta<-read.xls("~/Downloads/tst.xls", skip=1)

# 3 -- RUN THE REGRESSION AND FIT THE MODEL
fit <- lm(Graduation.rate ~ ACT , data=dta)

# 4 -- DISPLAY DATA
plot(dta$ACT, dta$Graduation.rate)
abline(fit)
