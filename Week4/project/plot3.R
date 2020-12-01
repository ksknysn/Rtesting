Bc<-subset(NEI, fips=="24510")
qplot(Emissions, year, data=Bc, facets = .~type, col=year)


qplot(displ, hwy, data=mpg, color=drv)
qplot(displ, hwy, data=mpg, color=drv, geom=c("point","smooth"))

---
qplot(y=hwy, data=mpg, color=drv)
qplot(drv, hwy, data=mpg, geom="boxplot")
qplot(drv, hwy, data=mpg, geom="boxplot", color=manufacturer)
qplot(hwy, data=mpg, fill=drv)

qplot(displ,hwy,data=mpg,facets = .~drv)
