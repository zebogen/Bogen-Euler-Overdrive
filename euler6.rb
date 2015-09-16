=begin

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

def sum_of_squares(limit)
  (1..limit).reduce { |sum, n| sum + n**2 }
end

def square_of_sum(limit)
  (1..limit).reduce(:+) ** 2
end

def square_sum_diff(limit)
  square_of_sum(limit) - sum_of_squares(limit)
end

# Driver tests
p square_sum_diff(10) == 2640
p square_sum_diff(100) == 25164150
