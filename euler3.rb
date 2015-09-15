=begin

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end

def smallest_prime_factor(n)
  (2..Math.sqrt(n).ceil).each do |i|
    return i if n % i == 0
  end
  return n
end

def largest_prime_factor(n)
  factor = smallest_prime_factor(n)
  until n == smallest_prime_factor(n)
    n /= factor
    factor = smallest_prime_factor(n)
  end
  return n
end

p largest_prime_factor(600851475143) == 6857
