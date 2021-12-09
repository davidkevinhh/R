datareg = read.csv("C:\\Users\\User\\Downloads\\revenue.csv")
View(datareg)

#membangun model regresi
model = lm(Revenue ~ Radio_Ads + TV_Ads + Employees, 
           data = datareg)

#membuat data residu model
res_mod = resid(model)

#Uji Asumsi Klasik

#Uji Normalitas Residual
shapiro.test(res_mod)

#Uji Linearitas
plot(datareg$Revenue, datareg$Radio_Ads, col = "red")
plot(datareg$Revenue, datareg$TV_Ads, col = "blue")
plot(datareg$Revenue, datareg$Employees, col = "green")

#Uji Multikolinearitas
car::vif(model)

#Uji Heteroskedastisitas
plot(res_mod)

#Uji Autokorelasi
lmtest::dwtest(model)

#Hasil Analisis
summary(model)
