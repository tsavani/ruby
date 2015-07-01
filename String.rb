#String class : we can overload operator and it will act as we defined. here we are doing '<<' operator overloading 
#which will actually append string in first position.
class String
  def <<(value)
    self.replace(value + self)
  end
end

str = "Hello, "
str << "World."

puts str

#Integer class : we can overload operator and it will act as we defined. here we are doing '+' operator overloading 
#which will actually do "-" operation.
class Integer
	def +(value)
  		self.replace(value - self)
  end
end

int = 2
int + 5

puts int