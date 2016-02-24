while line = gets
  n = line.chomp.to_f
  break if n < 0

  i = n.to_i
  f = n - i

  a = []
  8.times do
    a.unshift(i % 2)
    i /= 2
  end

  if i > 0
    puts :NA
    next
  end

  b = []
  4.times do
    f *= 2
    b << f.to_i
    f -= f.to_i
  end

  if f > 0
    puts :NA
    next
  end

  puts "#{a.join}.#{b.join}"
end
