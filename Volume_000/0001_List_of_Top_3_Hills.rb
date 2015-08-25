mountains = []
10.times do
  mountains << gets.chomp.to_i
end

mountains.sort!.reverse!

3.times do |i|
  puts mountains[i]
end
