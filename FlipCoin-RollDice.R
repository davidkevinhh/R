FlipCoin = function(n) {
  sample(0:1,n,rep=T)}
no_1 = FlipCoin(100)
no_1
sum(no_1 == 1)
sum(no_1 == 0)
hist(no_1, breaks = c(-0.5,0.5,1.5), prob = T, main = "Histogram FlipCoin David",
     xlab = "Tampilan koin", ylab = "Frekuensi")

head = sum(no_1 == 1)/100
tail = sum(no_1 == 0)/100
data.frame(head,tail)

no_3 = FlipCoin(500)
no_3
sum(no_3 == 1)
sum(no_3 == 0)

RollDie = function(n){
  sample(1:6,n,rep=T)}
no_4 = RollDie(200)
no_4
hist(no_4, breaks=c(0.5,1.5,2.5,3.5,4.5,5.5,6.5), prob=T, main="Histogram RollDice David",
     xlab="Tampilan angka Dadu", ylab="Frekuensi")

angka_1 = sum(no_4 == 1)/200
angka_2 = sum(no_4 == 2)/200
angka_3 = sum(no_4 == 3)/200
angka_4 = sum(no_4 == 4)/200
angka_5 = sum(no_4 == 5)/200
angka_6 = sum(no_4 == 6)/200
data.frame(angka_1,angka_2,angka_3,angka_4,angka_5,angka_6)

no_6 = RollDie(1000)
no_6
sum(no_6 == 1)
sum(no_6 == 2)
sum(no_6 == 3)
sum(no_6 == 4)
sum(no_6 == 5)
sum(no_6 == 6)