# 約数の個数
print("n=")
n=gets.to_i

num=0

for i in 1..n+1 do
   d=n%i
   if d==0 then
     num+=1
   end
end

print num


