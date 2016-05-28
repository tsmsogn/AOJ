stack = []

while line = gets
  n = line.chomp.to_i

  if n == 0
    puts stack.pop
  else
    stack << n
  end
end
