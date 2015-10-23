while line = gets
  a1, m1, a2, m2, a3, m3 = line.chomp.split.map(&:to_i)
  break if a1 == 0 && m1 == 0 && a2 == 0 && m2 == 0 && a3 == 0 && m3 == 0
  x, y, z = [1, 1, 1]

  i = 0
  loop do
    x = a1 * x % m1
    y = a2 * y % m2
    z = a3 * z % m3
    i += 1
    break if x == 1 && y == 1 && z == 1
  end

  puts i
end
