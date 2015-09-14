while line = gets
  n = line.chomp.to_i
  puts ((n**2) * 0.5 + n * 0.5 + 1).to_i
end
