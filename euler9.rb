=begin

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end

def valid_triplet?(triplet)
  triplet[0]**2 + triplet[1]**2 == triplet[2]**2
end

def pythagorean_triplet_by_sum(triplet_sum)
  (1...triplet_sum).to_a.combination(3).each do |triplet|
    if triplet[0] + triplet[1] + triplet[2] == 1000 && valid_triplet?(triplet)
      return triplet
    end
  end
end

# Driver test
p pythagorean_triplet_by_sum(1000).reduce(:*) == 31875000
