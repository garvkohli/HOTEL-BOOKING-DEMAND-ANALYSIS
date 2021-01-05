data = read.csv("D:\\hotel_bookings.csv",header = TRUE)
attach(data)
x=arrival_date_year
summary(x)
str(x)
t=table(x)
t
c1 = c("Red","Purple","Green")
p = 100*t/sum(t)
p1 = round(p, digits = 2)
piepercent = paste(p1,"%"," (",t,")",sep="")
piepercent
library(plotrix)
pie3D(t,labels = piepercent, col = c1,explode = 0.1)
legend("top",legend = 2015:2017, fill = c1, cex=0.8)
