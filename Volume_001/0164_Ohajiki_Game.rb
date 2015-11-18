while line = gets
  a = line.chomp.to_i
  break if a == 0
  b = gets.chomp.split.map(&:to_i)

  i, n = 0, 32
  while n > 0
    n -= (n - 1) % 5
    puts n
    c = b[i % a]
    c = n if c > n
    n -= c
    puts n
    i += 1
  end
end
