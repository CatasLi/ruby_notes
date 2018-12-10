arr=Array.new
a=Numeric.new
p arr.class
p arr.instance_of?(Numeric)
p arr.instance_of?(Object)
p arr.is_a?(Object)     # is_a? can see inherit
class HelloWorld
	Version = "1.0"       #constant  !Upcaps!
	@@count = 0           #class attribute ,no accessors
	def HelloWorld.count  #class function
		@@count
	end
	def initialize(myname = "Ruby")  #get parameter when Class.new, private by default
		@name = myname                 #instance attribute
	end
	# def name                     #get @name !!!also attr_reader :name
	# 	@name
	# end
	# def name=(value)             #modify @name,use like Instance.name=value !!!also attr_writer :name
	# 	@name = value            #attr_accessor :name == name + name=
	# end
	attr_accessor :name
	def hello
		puts "Hello,#{self.name}! " #self->instance itself  ,name is a function here!
		@@count += 1
	end
	public :hello                   #or public def~end def~end private def~end
	class << self                  #also class << classname ||def classname.classfunction
		def classfunction (arg)    #when 
			puts arg
		end
	end

end
bob = HelloWorld.new("Bob")
ruby = HelloWorld.new
bob.hello
bob.name ="BOB"              #also bob.name="BoB"
p bob.name
ruby.hello
p HelloWorld::Version
p HelloWorld.count
#-------------------------------------------
#extend class
class String
	def count_word              #Add function to String
		ary = self.split(/\s+/) #split string with ' '
		ary.size
	end
end
str = "I am the best!"
p str.count_word
#-------------------------------------------
class AlterArray < Array      #inherit ,default < Object
	def [] (i)                #overload [] function
		idx = i % size
		super(idx)            #call [] of the superclass
	end
end
str = AlterArray["1","2","3"]
p str[10]
#-------------------------------------------
p Object.instance_methods
p BasicObject.instance_methods
#-------------------------------------------
class HelloWorld2 < HelloWorld
	alias old_hello hello #alias function_name;also :alias :function_name
	def hello
		puts "New hello here."
	end
end
h2 = HelloWorld2.new
h2.old_hello
h2.hello
class HelloWorld2
	undef hello #also :function_name
end
#h2.hello
#-------------------------------------------
#singleton class  add funtion to an INSTANCE
str1 = "ruby"
class << str1
	def show
		puts self
	end
end
str1.show