stack = []

while line = gets
  stack << line.chomp.to_f 
end

puts sprintf('%.1f', stack.max - stack.min + 0.0)
