penentu_prima = function(n)
{
n = as.integer(readline(prompt = "Input biangan :"))
if (n>=2)
{
f = 1
i = 2
while (i <= n / 2) {
  if (n %% i == 0) {
    f = 0
    
    break
  }
  i = i + 1
}

if (f == 1) 
  {print(paste(n," adalah bilangan prima"))} 
else
  {print(paste(n," bukan bilangan prima"))}
}
else
{print("Bilangan invalid")}
}
penentu_prima()