rectangle, rhombus = 0, 0

while line = gets
  a, b, c = line.chomp.split(',').map(&:to_i)
  if a**2 + b**2 == c**2
    rectangle += 1
  elsif a == b
    rhombus += 1
  end
end

puts rectangle, rhombus
