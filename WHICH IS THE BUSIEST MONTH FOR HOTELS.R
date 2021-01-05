data = read.csv("D:\\hotel_bookings.csv",header = TRUE)
attach(data)
s=arrival_date_month
summary(s)
str(s)
t=table(s)
t
p=plot(t,type = "o",col="Blue")
t1=table(s,hotel)
t1
c1 = c("Blue","Red")
plot(t1,type = "p",col=c1)
