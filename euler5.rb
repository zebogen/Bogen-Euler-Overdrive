=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

def smallest_multiple(limit)
  i = limit * 2
  until !((limit / 2)..limit).any? { |n| i % n != 0 }
    i += limit
  end
  i
end

# Driver tests
p smallest_multiple(10) == 2520
p smallest_multiple(20) == 232792560
