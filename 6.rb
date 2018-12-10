7.times do |i|  #aslo 7.times {}    i begins from 0
	puts "#{i+1}.Welcome to Chapter 6!"  #复杂度不友好，关注i时用for或while
end
from,to = 1,5
sum = 0
for i in from..to #(do)   == （from..to）.each do |i|
	sum += i
end
puts sum
names=["a","b","c"]
for name in names       #顺序遍历，内部使用each方法实现的
	puts name
end
#-------------------------------------------
i=1 
while i<3  #(do)    先判断    可换用until i >= 3，只是判断条件相反
	puts i
	i += 1     #for循环自动+1
end
#-------------------------------------------
names.each do |name|    #与上面的for一致
	puts name
end
#-------------------------------------------
i =0
loop do  #默认死循环，不可省略do
	i += 1
	if i ==3
		redo
	elsif i >5      #!!elsif
		break
	end
	puts "#{i}.oops"
end
#break跳出一层循环，next执行下一次循环类似continue，redo再执行一遍redo前的循环体