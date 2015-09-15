=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

def sum_multiples(mult1, mult2, limit)
  (0...limit).reduce do |sum, n|
    n % mult1 == 0 || n % mult2 == 0 ? sum + n
                                     : sum
  end
end

# Driver test
p sum_multiples(3, 5, 1000) == 233168
