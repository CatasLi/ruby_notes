a=1
unless a<0  #do if false
	puts a
else
	puts (a-1)
end
tags=["A","B","C","P"]
tags.each do |tag|
	case tag
	when "A","C"
		puts "#{tag} is A or C."
	when "B"             #等价于if "B"===tag,注意指定对象在等号左边，===更广义的相等，可以表示=~以及左边对象是否属于右边类
		puts "#{tag} is B."
	else
		puts "#{tag} is not A or B or C."
	end
end
tags2=["A",1,nil]
tags2.each do |tag|
	case tag
	when String            #正则   when /^From/i 行开头有|from|     when/^$/ 空行
		puts "#{tag} is String."   #exit 结束程序 
		#break
	when Numeric           
		puts "#{tag} is Numeric."
	else
		puts "Item is nil."
	end
end
#if unless修饰符写法
puts "#{a}>0" if a>0
#对象id及比较
b=1.0
puts a.object_id #__id__
puts b.object_id
p a.equal? b  #比较id是否相同
p a.eql? b    #一般等价于==，但在数值类里被重定义
p a==b
hash={0=>"1"}
p hash[0.0]   #hash内部键比对用的.eql?
p hash[0]
