items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*produce , wheat |
  puts produce.join(', ')
  puts wheat
end

gather(items) do |apples , *others , wheat |
  puts apples
  puts others.join(", ")
  puts wheat
end

gather(items) do |apple , *other |
  puts apple
  puts other.join(", ")
end

gather(items) do | apples , corn , cabbage , wheat |
  puts "#{apples}, #{corn}, #{cabbage}, #{wheat}"
end
