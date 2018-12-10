a,b,*c=1,2,3,4
p [a,b,c]
a,b=b,a
p [a,b]
e,f=c
p [e,f]
g,h,i=[a,b,c]
p [g,h,i]
g,h,(f,e)=[a,b,c]  #get member of [c,[a,b],d]
p [e,f]