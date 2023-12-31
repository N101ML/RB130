def each_with_index(array)
  array.each { |el| yield(el, array.index(el)) }
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
