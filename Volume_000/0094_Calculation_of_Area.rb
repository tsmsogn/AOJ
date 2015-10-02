while line = gets
  a, b = line.chomp.split.map(&:to_i)
  s = a * b / 3.305785
  puts sprintf('%0.6f', s)
end
