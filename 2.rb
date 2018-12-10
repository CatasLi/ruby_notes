names=["刘瑞宁","李浩杰","朱梦楚","袁亮亮"]
puts names.size
names.each do |n| #each迭代器遍历数组，有序
	puts n
end
puts "end of array."
names2={name:"李浩杰",pinyin:"lihaojie"} #hash,键存为symnol类型(多了:)，轻量级字符串
puts names2[:name]
names2.each do |key,value|
	puts "#{key}:#{value}"
end
puts "end of hash."
puts (/hao/=~names2[:pinyin]) #/pattern/ =~ string to be checked.return nil if failed. (Chinese OK)
puts (/Hao/i =~names2[:pinyin]) # i means whatever caps