require 'pry'

# def divisors(int)
#   arr = (1..int).to_a
#   result = []

#   arr.each do |num|
#     result << num if int % num == 0
#   end
#   result
# end

# Solution from exercise:

# def divisors(number)
#   1.upto(number).select do |possible|
#     number % possible == 0
#   end
# end

# Further Exploration: (taken from student submissions, not my own work)

def divisors(number)
  result = []

  (1..Math.sqrt(number)).each do |num|
    if number % num == 0
      result << num
      result << (number / num)
    end
  end

  p result.uniq.sort
end

# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357) == [1, 999979, 999983, 999962000357]
