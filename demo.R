#install.packages('gdata')
require (gdata)

# 1 -- GET THE FILE AND SAVE IT (1993 College information)
#con<-download.file("http://mathforum.org/workshops/sum96/data.collections/datalibrary/colleges.XL.zip.xls", "~/Downloads/tst.xls",method="curl")

# 2 -- READ THE EXCEL FILE AND CREATE A DATAFRAME
demo_dataframe<-read.xls("~/Downloads/tst.xls", skip=1)

# 3 -- RUN THE REGRESSION AND FIT THE MODEL
fit <- lm(Graduation.rate ~ ACT , data=demo_dataframe)

# 4 -- DISPLAY DATA
plot(demo_dataframe$ACT, demo_dataframe$Graduation.rate, xlab="ACT", ylab="Graduation Rate")
abline(fit)
