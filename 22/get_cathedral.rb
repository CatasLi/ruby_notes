# encoding: UTF-8
require "open-uri"
require "nkf"
def get_cathedral
 	url = "https://cruel.org/freeware/cathedral.html"
	filename = "cathedral.html"
	File.open(filename, "w") do |f|
		text = open(url).read
		f.write text
	end
end 