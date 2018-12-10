#module   only functions    no instances,no inherit
include Math                #can use in a Class,module's function can be used as instance function 
p FileTest.exist?("/usr")   #each module ->its own namespace
p PI                        
module HelloModule
	Version = "1.0"
	def mhello(name)
		puts "Hello,#{name}"
	end
	module_function :mhello  #to enable Module.function without include
end
#include HelloModule
#p Version
HelloModule.mhello("Alice")
p String.include?(Math)      #if Class include a module
p String.ancestors           #will include your "include"s 
p String.superclass
#------------------------------------------------------------
module Edition
	def edtion(n)
		"#{self} is #{n}."
	end
end
a = "123"
a.extend(Edition) #WRONG HERE! shows mhello is a private method.
p a.edtion(4)
#--
class MyClass
	extend Edition    #use extend to involve class function.
end
p MyClass.edtion(4)
#------------------------------------------OO ：encapsulation，polymorphism
f = 3.14
p f.round   #四舍五入
p f.ceil    #进位      to_i 取整