#import data
usa_housing = read.csv("C:\\Users\\User\\Downloads\\USA_Housing.csv")
View(usa_housing)

#periksa normalisasi data
shapiro.test(usa_housing$Price)
hist(usa_housing$Price)

#membangun model regresi
model = lm(Price ~ Avg..Area.Income + Avg..Area.House.Age + Avg..Area.Number.of.Rooms
           + Avg..Area.Number.of.Bedrooms, data = usa_housing)

#membuat data residu model
res_mod = resid(model)

#Uji Asumsi Klasik

#Uji Normalitas Residual
shapiro.test(res_mod)

#Uji Linearitas
resettest(usa_housing$Price ~ usa_housing$Avg..Area.Income)
plot(usa_housing$Price, usa_housing$Avg..Area.Income , col = "red")
resettest(usa_housing$Price ~ usa_housing$Avg..Area.House.Age)
plot(usa_housing$Price, usa_housing$Avg..Area.House.Age, col = "blue")
resettest(usa_housing$Price ~ usa_housing$Avg..Area.Number.of.Rooms)
plot(usa_housing$Price , usa_housing$Avg..Area.Number.of.Rooms, col = "green")
resettest(usa_housing$Price ~ usa_housing$Avg..Area.Number.of.Bedrooms)
plot(usa_housing$Price , usa_housing$Avg..Area.Number.of.Bedrooms, col = "yellow")

#Uji Multikolinearitas
car::vif(model)

#Uji Heteroskedastisitas
bptest(model, studentize = F, data = swiss)
plot(res_mod)

#Uji Autokorelasi
lmtest::dwtest(model)

#Hasil Analisis
summary(model)