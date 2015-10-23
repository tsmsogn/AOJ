while line = gets
  a1, m1, a2, m2, a3, m3 = line.chomp.split.map(&:to_i)
  break if a1 == 0 && m1 == 0 && a2 == 0 && m2 == 0 && a3 == 0 && m3 == 0
  x, y, z = [1, 1, 1]

  i = 0
  loop do
    x = a1 * x % m1
    i += 1
    break if x == 1
  end

  j = 0
  loop do
    y = a2 * y % m2
    j += 1
    break if y == 1
  end

  k = 0
  loop do
    z = a3 * z % m3
    k += 1
    break if z == 1
  end

  puts k.lcm(j.lcm(i))
end
