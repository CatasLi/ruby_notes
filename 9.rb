#Chapter 9 Operator
#obj.var = obj.var + 1  === obj.var += 1    !obj must has reader and writter
var = false
p var || "Ruby"       #left -> right;stops when get a value except false or nil(smart)
ary = ["1","2"]
item = ary && ary[0]  #no ary[0]&&ary
p item
a ||= 1               #define 'a' with a default value.      a=nil
p a
a = (a>3)? a : a+3
p a
#a = Range.new(1,5)   #equals 1..5   
a = 1...5             #equals 1..4
p a.to_a              #show content
b = "a".."f"
p b.to_a
p "a".succ            #get next
#DEFINE OPERATOR
#NO DEFINE :    ::  &&  ||  ..  ...  ?:  not  =  and  or
class Point 
	attr_accessor :x, :y	
	def initialize(x=0, y=0)
		@x, @y = x, y
	end 
	def inspect                  #show with 'p'
		"(#{x}, #{y})"
	end
	#2-p
	def +(other)                 #other
		self.class.new(x + other.x, y + other.y) #also Point.new(),but not suitable for Mix-in =-=
	end
	def -(other)
		self.class.new(x - other.x, y - other.y)
	end
	#1-p
	def +@                              #only [+,-,~,!], use as "+@"" 
		dup                             #return a copy
	end
	def -@
		self.class.new(-x, -y)
	end
	def ~@
		self.class.new(y, x)
	end
    #[] and []=
    # def [](index)
    # 	case index
    # 	when 0
    # 		x
    # 	when 1
    # 		y
    # 	else
    # 		raise ArgumentError, "out of range `#{index}'"
    # 	end
    # end
    def []=(index, val)
    	case index
    	when 0
    		self.x = val
    	when 1
    		self.y = val
    	else
    		raise ArgumentError, "out of range `#{index}'"
    	end
    end  
end
point0 = Point.new(1,2)
point1 = Point.new(3,4)
p point0                         #inspect 
p point1 
p point0 + point1
p -point0
p ~point0
#p point0[1]
point0[0]=1                   #!!!WRONG   NoMethodError?!
p point0
#--to_s and inspect
str = "Ruby"
p str.to_s                       #output of the program
p str.inspect                    #debug or monitor, usually with p
#--