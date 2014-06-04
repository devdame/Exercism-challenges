# Find the difference between the sum of the squares of the first one hundred natural numbers and 
# the square of the sum.

# The sum of the squares of the first ten natural numbers is,

# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)**2 = 55**2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square 
# of the sum is 3025 - 385 = 2640.


class Squares
	attr_reader :highest_num

	def initialize(highest_num)
		@highest_num = highest_num
	end

	def square_of_sums
		(1..highest_num).inject(:+)**2
	end

	def sum_of_squares
		(1..highest_num).map {|num| num**2}.inject(:+)
	end

	def difference
		square_of_sums - sum_of_squares
	end

end