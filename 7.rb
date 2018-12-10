def hello(name="Rubby") #def hello(a,b=1,c=2) set default from the RIGHT
	puts "Hello #{name}"
end
def area(x,y)
	x*y    #no "return" and the last expression will be returned,
end
puts area(3,4)
p print(1)
#function with block
def myloop
	while true
		yield #->block
	end
end
num = 1
myloop do    #do~end as a varible
	puts num
	break if num > 20
	num += 2
end
#function with some varibles
def foo(*arg)   #varibles will be concluded as a array,also def(arg1,*args,arg2)
	arg         # *arg can only be used once here 
end
p foo(1,3,5)
#key-word parameter
def area2(x:0,y:0) #can (x:0,y),also (x:0,**y),y is a hash
	x * y
end
p area2(x:1,y:6)   #needn't in order
inhash = {x:5,y:6}   #hash as input
p area2 inhash
def foo2(arg)   
	arg
end
p foo2(x: 2,y: 3) #{~} is called literal,use it in function can omiss {}