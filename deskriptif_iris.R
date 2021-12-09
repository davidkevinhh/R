file.choose()
iris = read.csv("C:\\Users\\User\\Downloads\\iris (1).csv")
#melihat dataset iris
View(iris)
sum1 = summary(iris$SepalLengthCm)
sum1
var1 = var(iris$SepalLengthCm)
var1
std1 = sd(iris$SepalLengthCm)
std1
desc1 = c(sum1,"Varians" = var1,"Std Deviasi" =std1)
desc1

sum2 = summary(iris$SepalWidthCm)
sum2
var2 = var(iris$SepalWidthCm)
var2
std2 = sd(iris$SepalWidthCm)
std2
desc2 = c(sum2,"Varians" = var2,"Std Deviasi" =std2)
desc2

sum3 = summary(iris$PetalLengthCm)
sum3
var3 = var(iris$PetalLengthCm)
var3
std3 = sd(iris$PetalLengthCm)
std3
desc3 = c(sum3,"Varians" = var3,"Std Deviasi" =std3)
desc3

sum4 = summary(iris$PetalWidthCm)
sum4
var4 = var(iris$PetalWidthCm)
var4
std4 = sd(iris$PetalWidthCm)
std4
desc4 = c(sum4,"Varians" = var4,"Std Deviasi" =std4)
desc4

stem(iris$SepalLengthCm)
stem(iris$SepalWidthCm)
stem(iris$PetalLengthCm)
stem(iris$PetalWidthCm)

range(iris$SepalLengthCm)
#membuat 5 kelas
(max(iris$SepalLengthCm)-min(iris$SepalLengthCm))/5
#membuat panjang kelas
iris.kelas1 = seq(4.3,8,by=0.74)
iris.kelas1
#menghitung interval kanan terbuka
iris.cut1 = cut(iris$SepalLengthCm,iris.kelas1,right=FALSE)
iris.cut1

range(iris$SepalWidthCm)
#membuat 5 kelas
(max(iris$SepalWidthCm)-min(iris$SepalWidthCm))/5
#membuat panjang kelas
iris.kelas2 = seq(2.0,4.5,by=0.5)
iris.kelas2
#menghitung interval kanan terbuka
iris.cut2 = cut(iris$SepalWidthCm,iris.kelas2,right=FALSE)
iris.cut2

range(iris$PetalLengthCm)
#membuat 5 kelas
(max(iris$PetalLengthCm)-min(iris$PetalLengthCm))/5
#membuat panjang kelas
iris.kelas3 = seq(1.0,7.0,by=1.20)
iris.kelas3
#menghitung interval kanan terbuka
iris.cut3 = cut(iris$PetalLengthCm,iris.kelas3,right=FALSE)
iris.cut3

range(iris$PetalWidthCm)
#membuat 5 kelas
(max(iris$PetalWidthCm)-min(iris$PetalWidthCm))/5
#membuat panjang kelas
iris.kelas4 = seq(0.1,2.6,by=0.50)
iris.kelas4
#menghitung interval kanan terbuka
iris.cut4 = cut(iris$PetalWidthCm,iris.kelas4,right=FALSE)
iris.cut4

#menghitung frekuensi
iris.frek1 = table(iris.cut1)
iris.frek1
#menampilkan tabel
cbind(iris.frek1)

#menghitung frekuensi
iris.frek2 = table(iris.cut2)
iris.frek2
#menampilkan tabel
cbind(iris.frek2)

#menghitung frekuensi
iris.frek3 = table(iris.cut3)
iris.frek3
#menampilkan tabel
cbind(iris.frek3)

#menghitung frekuensi
iris.frek4 = table(iris.cut4)
iris.frek4
#menampilkan tabel
cbind(iris.frek4)

#membuat tabel frekuensi relatif
iris.rel1 = prop.table(iris.frek1)
cbind(iris.rel1)

iris.rel2 = prop.table(iris.frek2)
cbind(iris.rel2)

iris.rel3 = prop.table(iris.frek3)
cbind(iris.rel3)

iris.rel4 = prop.table(iris.frek4)
cbind(iris.rel4)

#membuat tabel frekuensi kumulatif
iris.kumfrek1 = cumsum(iris.frek1)
cbind(iris.kumfrek1)
iris.kumrel1 = cumsum(iris.rel1)
cbind(iris.kumrel1)

iris.kumfrek2 = cumsum(iris.frek2)
cbind(iris.kumfrek2)
iris.kumrel2 = cumsum(iris.rel2)
cbind(iris.kumrel2)

iris.kumfrek3 = cumsum(iris.frek3)
cbind(iris.kumfrek3)
iris.kumrel3 = cumsum(iris.rel3)
cbind(iris.kumrel3)

iris.kumfrek4 = cumsum(iris.frek4)
cbind(iris.kumfrek4)
iris.kumrel4 = cumsum(iris.rel4)
cbind(iris.kumrel4)

#membuat data frame
df1 = data.frame(iris.frek1)
View(df1)

df2 = data.frame(iris.frek2)
View(df2)

df3 = data.frame(iris.frek3)
View(df3)

df4 = data.frame(iris.frek4)
View(df4)

#membuat histogram
hist(iris$SepalLengthCm, col ="yellow",xlab="SepalLength",ylab="Banyak")

hist(iris$SepalWidthCm, col ="blue",xlab="Sepal Width",ylab="Banyak")

hist(iris$PetalLengthCm, col ="green",xlab="Petal Length",ylab="Banyak")

hist(iris$PetalWidthCm, col ="purple",xlab="Petal Width",ylab="Banyak")

ggplot(iris,aes(x=SepalLengthCm))+geom_histogram(color="black",fill="yellow")

ggplot(iris,aes(x=SepalWidthCm))+geom_histogram(color="black",fill="green")

ggplot(iris,aes(x=PetalLengthCm))+geom_histogram(color="black",fill="blue")

ggplot(iris,aes(x=PetalWidthCm))+geom_histogram(color="black",fill="Red")

ggplot(df,aes(x="",y=Freq,fill=iris.cut1))+geom_bar(stat="identity"
                                                     ,width = 1,color="white")+coord_polar("y",start=0)+
  theme_void() #menghilangkan background
