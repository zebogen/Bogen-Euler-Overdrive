=begin

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end

def one_digit(n)
  words = %w(one two three four five six seven eight nine)
  words[n - 1]
end

def two_digits(n)
  words = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  if (11..19).include?(n)
    teens = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    return teens[n - 11]
  end
  base = words[(n / 10) - 1]
  if n % 10 == 0
    return base
  else
    return base + one_digit(n % 10)
  end
end

def three_digits(n)
  base = one_digit(n / 100) + "hundred"
  if n % 100 == 0
    return base
  else
    if n % 100 >= 10
      return base + "and" + two_digits(n % 100)
    else
      return base + "and" + one_digit(n % 100)
    end
  end
end

def digit_word_count(n)
  (1..n).reduce(0) do |acc, num|
    if num == 1000
      acc + 11
    elsif num >= 100
      acc + three_digits(num).length
    elsif num >= 10
      acc + two_digits(num).length
    else
      acc + one_digit(num).length
    end
  end
end

p two_digits(15).length == 7
p three_digits(342).length == 23
p digit_word_count(1000) == 21124
