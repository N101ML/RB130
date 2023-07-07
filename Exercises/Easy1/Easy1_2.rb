def compute(element)
  if block_given?
    yield(element)
  else
    "Does not compute."
  end
end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

p compute(2) { |num| num + 2 }
p compute(5) { |num| num * num }
p compute(6)
