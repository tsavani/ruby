# class FiboWhile
# 	def get_value_while
# 		n=gets.chomp.to_i
# 		a=0
# 		b=1
# 		print a,b
# 		sum=0
# 		while n_next<n do
# 			n_next= pre+cur
# 			print n_next, " "
# 			pre=cur
# 			cur=n_next
# 		end
# 	end
# end
# d=FiboWhile.new
# puts "\nPlease enter value for Fibo While til value : "
# d.get_value

class FiboTime

	def get_value_each
		n=gets.chomp.to_i
		n_next = 0
		pre,cur = 0,1
		print pre, " ", cur, " "
		(0..n-2).each do |n1|
			n_next= pre+cur
			print n_next, " "
			pre=cur
			cur=n_next 
		end
	end

	def get_value_while
		n=gets.chomp.to_i
		n_next = 0
		pre,cur = 0,1
		print pre, " ", cur, " "
		while n_next<n do
			n_next= pre+cur
			print n_next, " "
			pre=cur
			cur=n_next
		end
	end
end
d=FiboTime.new
puts "\nPlease enter value for Fibo each til value : "
d.get_value_while
puts "\nPlease enter value for Fibo each til count : "
d.get_value_each