loop do
  x = gets.chomp.to_f
  h = gets.chomp.to_f
  break if x == 0 && h == 0
  answer =  x ** 2 + Math.sqrt((x / 2) ** 2 + h ** 2) * x / 2 * 4
  puts sprintf('%.6f', answer)
end
