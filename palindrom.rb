class Palindrom
	def self.palindrom_check(n)
		n = n.to_s
		if(n == n.reverse)
			puts "#{n} is pelindrom"
		else
			puts "#{n} is not palindrom"
		end
	end
end

Palindrom.palindrom_check(121)