while line = gets
  n = line.chomp.to_i
  break if n == -1

  x, y, r = 0.0, 0.0, 0.0

  n.times do
    x += Math.cos(r)
    y += Math.sin(r)
    r = Math.atan2(y, x) + Math::PI / 2
  end

  puts sprintf('%0.2f', x), sprintf('%0.2f', y)
end
