require 'pry'

def select(arr)
  counter = 0
  ret_arr = []

  while counter < arr.size
    ret_arr.push(arr[counter]) if yield(arr[counter])
    counter += 1
  end

  ret_arr
end

array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }
p select(array) { |num| puts num }
p select(array) { |num| num + 1 }
