while line = gets
  v = line.chomp.to_f
  t = v / 9.8
  y = 4.9 * t**2
  puts ((y + 5) / 5).ceil
end
