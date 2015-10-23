while line = gets
  n = line.chomp.to_i
  break if n == 0

  stack = []
  n.times do
    stack << gets.chomp.to_i
  end

  stack.sort!
  
  wait = [0]
  for i in 1...stack.size
    wait << wait[i - 1] + stack[i - 1]
  end

  puts wait.inject(:+)
end
