class Armstrong
	def self.arm(n)
		temp = n
		sum = 0
		len = n.to_s.length
		(1..len).each do 
			sum += (n%10)**len
			n = n/10
		end
		if temp == sum
			puts "#{temp} armstrong = #{sum} \'armstrong number\'"
		else
			puts "#{temp} armstrong = #{sum} \'not armstrong number\'"
		end
	end
end

Armstrong.arm(153)