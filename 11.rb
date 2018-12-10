#Chapter 10 Block
ary = ["a","b","c"]
ary.each{|i| p i.upcase}                             #|block para| function send to block
ary.each_with_index{|val,index| p [index, val]} #iterator: function that can cycle blocks
File.open("LICENSE.txt") do |file|
	file.each_line do |line|
		#puts line.downcase
		#puts "-----------------------------"
	end                #when block finished the file will be closed by block
end                    #here we use block to do the normal(boring but easily forget) work
sarr = ["Peter","peter","Ruby","Lihaojie","LIFULL"]
sorted = sarr.sort     #no block, use encode to campare(<=> ,return -1,0,1)
p sorted                                                #small->LARGE, UPCASE<downcase
block_call_num = 0                            
sorted = sarr.sort do |a,b|
	block_call_num += 1
	a.length <=> b.length # <=> must be in the last line
end
p sorted
p block_call_num #sarr.sort_by{|item| item.length}  only call String#length 5 times
#---------------------------------------------------------------------------------
def total(from, to)
	result = 0
	from.upto(to) do |num| #Interger#upto get form..to
		if block_given?    #if block given?
			result += yield(num) #send num to block and get the result
		else  
			result += num 
		end
	end
	return result
end
p total(1,10)
p total(1,10){|num| num ** 2}
def block_args 
	yield()
	yield(1)
	yield(1,2,3)
end
block_args do |a,b|   #[nil,nil], [1,nil], [1,2]
	p [a,b]
end
block_args do |*a|    #[[]], [[1]], [[1,2,3]]
	p [a]
end
#Control
n = total(1,10) do |num|
	if num == 5
		break 0       #jump to total(), so no return(nil) of the whole function
	end
	num
end
p n  
n = total(1,10) do |num|
	if num % 2 == 0
		next 0      #jump to yeild()/next block, so no return of the block
	end             #redo will jump to start of the block, so easy->endless loop
	num
end    
p n         
#Block as a Object
def total2(from, to, &block)  #&block is a Proc parameter(MUST AT THE END of the parameter list).  block = Proc.new do~end 
	res = 0
	from.upto(to) do |num|
		if block              #if no block, block = nil
			res += block.call(num) #block.call() == yield()
		else
			res += num
		end 
	end
	return res
end  
p total2(1,10){|num| num - 1}
def call_each(arr, &block)
	arr.each(&block)         #use &block to pass block from one function to another 
end
call_each(ary) do |item|
	p item
end
#Parameter values
x = 1
y = 1
ary.each do |x|        #not the 'x' outside the block
	y += x.length      #outside 'y' can be used in the block
end
p [x,y]
ary.each do |x; y|     #y is a new block variable(can only be used in block)
	p [x,y]
end