def types(birds)
  yield(birds)
end

birds = ['crow', 'finch', 'hawk', 'eagle']

types(birds) do |_, _, *raptors|
  puts "Raptors: #{raptors.join(', ')}."
end
