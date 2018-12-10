print ("\\Hello \"Ruby\".\n")
print ('\\Hello \"Ruby\".\n')
print "\nNo \'(\' is OK.\n"
print "More"," strings"," coming!\n"
puts "\"puts\" == \"print \"~~\\n\""
puts "hello","see you in under line~"
#Basic use of "print" and "put"   can not tell "100" from 100
p "100",100,"\n100"
puts "李浩杰"
#变量部分
a=1
puts "a=#{a}"
=begin
段注释
=end
#控制语句
if a>=1  #then可加可不加
	puts ">=1"
else
	puts "<1"
end      #有end
while a<10 #do可加可不加
	print a
	a=a+1
end
puts "while end."
5.times do #迭代器,必须加do
	puts a
end