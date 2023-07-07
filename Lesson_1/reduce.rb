# def reduce(arr, start=0)
#   total = start
#   counter = 0

#   while counter < arr.size
#     total = yield(total, arr[counter])
#     counter += 1
#   end

#   total
# end

# array = [1, 2, 3, 4, 5]

# p reduce(array) { |acc, num| acc + num }                    # => 15
# p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

require 'pry'

def reduce(arr, start=nil)
  counter = 0
  start == nil ? accumulator = arr[0].class.new : accumulator = start

  while counter < arr.size
    accumulator = yield(accumulator, arr[counter])
    counter += 1
  end

  accumulator
end

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
