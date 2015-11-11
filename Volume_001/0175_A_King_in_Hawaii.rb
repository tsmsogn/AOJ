while line = gets
  n = line.chomp.to_i
  break if n == -1
  stack = []

  until n == 0
    stack << n % 4
    n /= 4
  end
  
  puts (stack.any?) ? stack.reverse.join : 0
end
