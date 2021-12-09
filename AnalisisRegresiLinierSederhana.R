file.choose()
usa_housing = read.csv("C:\\Users\\User\\Downloads\\USA_Housing.csv")
plot(usa_housing$Price, usa_housing$Avg..Area.House.Age, main = "Plot Data USA Housing",
     xlab="Harga Rumah ($)", ylab = "Umur Rata-rata Rumah")
cor.test(usa_housing$Price, usa_housing$Avg..Area.House.Age)
regresi_linier = lm(usa_housing$Price ~ usa_housing$Avg..Area.House.Age)
regresi_linier
summary(regresi_linier)