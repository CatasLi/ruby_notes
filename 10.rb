#Chapter 10 Exception
def foo
	File.open("no/path")
end
def bar
	foo()
end
begin                           
	bar()               #check if throw exception
rescue => ex     #get exception => ex(object) ,use rescue exception1 to specify
	puts ex.message
	#sleep 10           #in S not ms
	#retry              #just retry block under "begin"
# ensure                #run whether throws exption
# 	file.close
end
puts "alive here"
p Integer("123") rescue 0
n = Integer("var") rescue 0      #block1 throws exception then block2 
p n
# def foo
# 	begin         #(begin),also in class, but function behind exception will fail so NG
# 	balabala
# 	rescue => ex
# 		balabala
# 	end
# 	ensure
# 		balabala
# 	end
# end
#--------------------------
#Exception Class(EC in short)
#Exception is a class, too. 
#raise EC, message   throw EC, and use a string as the message of it.
#raise EC            throw EC
#raise message       throw RuntimeError
#raise               throw RuntimeError OUTSIDE rescue