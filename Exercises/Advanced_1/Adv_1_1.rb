require 'pry'

check = Enumerator.new do |el|
  a = 1
  b = 0
  loop do
    el << a
    b = b + 1
    a = a * b
  end
end

6.times { |number| puts "#{number}! == #{check.next}" }
puts "=========================="

6.times { |number| puts "#{number}! == #{check.next}" }
puts "=========================="

check.rewind
6.times { |number| puts "#{number}! == #{check.next}" }
puts "=========================="

check.each_with_index do |value, number|
  puts "#{number}! == #{value}"
  break if number >= 5
end
