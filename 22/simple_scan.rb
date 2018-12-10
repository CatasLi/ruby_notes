length = ARGV[2].to_i
pattern = Regexp.new("(.{0,#{length}})("+ARGV[0]+")(.{0,#{length}})") # . everything   {10} repeat 10 times
filename = ARGV[1]
count = 0

File.open(filename) do |file|
	file.each_line do |line|
		if pattern =~ line
			line.scan(pattern) do |s|       #String#scan
				prefix_len = 0
				s[0].each_char do |ch|
					if ch.ord < 128         #means ASCII
						prefix_len += 1
					else
						prefix_len += 2
					end
				end
				space_len = length * 2 - prefix_len
				puts "#{" "*space_len}#{s[0]}<<#{s[1]}>>#{s[2]}"
				count += 1
			end
			#print line.gsub(pattern){|str| "<<#{str}>>"}
		end
	end
end
puts "#{ARGV[0]} count: #{count}"