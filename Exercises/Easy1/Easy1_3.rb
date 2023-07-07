require 'pry'

# def missing(arr)
#   result_arr = []

#   arr[0].upto(arr[-1]) do |num|
#     arr.include?(num) ? next : result_arr << num
#   end

#   result_arr
# end

# Solution below from exercise:

# def missing(array)
#   result = []
#   array.each_cons(2) do |first, second|
#     result.concat(((first + 1)..(second - 1)).to_a)
#   end
#   result
# end

# Further Exploration:

def missing(arr)
  result = []
  return result if arr.size == 1
  counter = 0
  temp_arr = (arr[0]..arr[-1]).to_a

  loop do
    value = temp_arr[counter]
    result << value if arr.include?(value) == false
    counter += 1
    break if counter == (temp_arr.size - 1)
  end
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
