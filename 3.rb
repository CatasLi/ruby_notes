# puts ARGV[0]  #参数得到的全是字符串
# p ARGV[0]
# p ARGV[0].to_i
#read files
# filename= ARGV[0]
# file=File.open(filename)
# text=file.read
# print text
# file.close
#===print File.read(ARGV[0])
=begin
def simple_grep(pattern,filename) #require "./3"
	pattern2= Regexp.new(pattern) #根据string创建正则表达式，大小写敏感
	file=File.open(filename)
	file.each_line do |line|
		if pattern2 =~ line
			puts line
		end
	end
	file.close
end
simple_grep(ARGV[0],ARGV[1])
puts "end of file."
=end
require "date"
require "pp"
puts Date.today
a=[{a:"1",
	b:"2",
	c:"3"},
	1]
p a
pp a