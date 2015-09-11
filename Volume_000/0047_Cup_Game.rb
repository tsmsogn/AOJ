stack = {'A' => 1, 'B' => 0, 'C' => 0}

while line = gets
  i, j = line.chomp.split(',')
  stack[i], stack[j] = stack[j], stack[i]
end
 
puts stack.key(1)
