def zip(arr1, arr2)
  result = []
  counter = 0
  loop do
    result << [arr1[counter], arr2[counter]]
    counter += 1
    break if counter == arr1.size
  end
  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
