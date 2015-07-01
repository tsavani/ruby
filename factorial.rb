class Factorial
	def self.fact(n)
 		puts 1.upto(n).inject('*')
	end
end

Factorial.fact(4)