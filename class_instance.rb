class Pet

	def set_name=(name)
		@name = name
	end

	def get_name
		return @name
	end

	def set_shell=(shell_design)
		@shell = shell_design
	end

	def get_shell
		return @shell
	end

	def set_age=(age)
		@age = age
	end

	def get_age
		return @age
	end
end

class Snail < Pet

	@@total_snails = 0

	def initialize
		@@total_snails += 1
	end

	def self.current_count
		puts "There are #{@@total_snails} on my lawn."
	end

	def yip
		return "Yip!"
	end
end

class Turtle < Pet

	def yap
		return "Yap!"
	end
end

my_snail = Snail.new
my_snail.set_name= "Julius"
snail_name = my_snail.get_name
puts "#{snail_name} is a snail. He says #{my_snail.yip}"
Snail.current_count
puts Snail.inspect
puts my_snail.inspect

my_turtle = Turtle.new
my_turtle.set_name= "Oscar"
turtle_name = my_turtle.get_name
puts "#{turtle_name} is a turtle. He says #{my_turtle.yap}"
puts my_turtle.inspect