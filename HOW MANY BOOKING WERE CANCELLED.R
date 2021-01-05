data = read.csv("D:\\hotel_bookings.csv",header = TRUE)
attach(data)
class(data)
s=is_canceled
class(s)#finding the data type of s
summary(s)#Summary of s
str(s)#basic structure of s
t=table(s)#Frequency table of the s
t
c1 = c("Red","Purple")#forming a vector c1 for color
p = 100*t/sum(t)
p1 = round(p, digits = 2)
piepercent = paste(p1,"%"," (",t,") ",sep="")
piepercent
library(plotrix)#3D piechart's package
#forming a 3D piechart of table t
pie3D(t,labels = piepercent, col = c1,explode = 0.1)
order = c("Bookng Canceled","Booking Not Canceled")
#Adding necessary legends
legend("top",legend = order, fill = c1, cex=0.8)

