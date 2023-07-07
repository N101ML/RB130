def step(start, end_num, stp)
  final_start = start.clone
  loop do
    yield(start)
    start += stp
    break if start > end_num
  end
  (final_start..end_num)
end

step(1, 10, 3) { |value| puts "value = #{value}" }
