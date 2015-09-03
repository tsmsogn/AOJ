x, y = 0, 0
a = 90

while line = gets
  break if line.chomp == '0,0'
  c, d = line.chomp.split(',').map(&:to_i)
  x += c * Math.cos(a * Math::PI / 180)
  y += c * Math.sin(a * Math::PI / 180)
  a -= d
end

puts x.to_i, y.to_i
