grid = []
8.times do
  grid << gets.chomp.split('')
end

puts 90
0.upto(7) do |j|
  row = []
  7.downto(0) do |i|
    row << grid[i][j]
  end
  puts row.join
end

puts 180
7.downto(0) do |i|
  row = []
  7.downto(0) do |j|
    row << grid[i][j]
  end
  puts row.join
end

puts 270
7.downto(0) do |j|
  row = []
  0.upto(7) do |i|
    row << grid[i][j]
  end
  puts row.join
end
