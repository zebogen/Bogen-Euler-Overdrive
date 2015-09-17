=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end

def generate_primes(n)
  sieve = Array.new(n, true)
  (3..(n**0.5).floor + 1).step(2) do |i|
    if sieve[i]
      (i*2...n).step(i) { |k| sieve[k] = false }
    end
  end
  primes = [2]
  (3...n).step(2) { |i| primes << i if sieve[i] }
  primes
end

def sum_of_primes(limit)
  generate_primes(limit).reduce(:+)
end

# Driver tests
p sum_of_primes(10) == 17
p sum_of_primes(2_000_000) == 142913828922
