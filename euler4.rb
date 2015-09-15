=begin

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

def largest_palindrome(magnitude)
  max = ("9" * magnitude).to_i
  min = ("1" + "0" * (magnitude-1)).to_i
  ops = (min..max).to_a.reverse.combination(2)
  ops.map { |op| op[0] * op[1] }.select { |n| is_palindrome?(n) }.max
end

# Driver test
p largest_palindrome(3) == 906609
