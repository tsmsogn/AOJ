while line = gets
  q = line.chomp.to_f
  break if q == -1

  x = q / 2
  while true
    x = x - (x**3 - q) / (3 * x**2)
    break if (x**3 - q).abs < 0.00001 * q
  end

  puts sprintf('%0.6f', x)
end
