=begin

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end

def is_prime?(n)
  !(2...n).any? { |k| n % k == 0 }
end

def next_prime(n)
  n += 1
  until is_prime?(n)
    n += 1
  end
  n
end

def nth_prime(n)
  prime_count = 1
  k = 2
  until prime_count == n
    k = next_prime(k)
    prime_count += 1
  end
  k
end

# Driver tests
p nth_prime(6) == 13
p nth_prime(10_001) == 104743
