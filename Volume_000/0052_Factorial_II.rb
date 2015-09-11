while line = gets
  n = line.chomp.to_i
  break if n == 0
  answer = 0
  while n > 0
    answer += n /= 5
  end

  puts answer
end
