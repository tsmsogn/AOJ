sum = 0
sum_of_num = 0
count = 0

while line = gets
  price, num = line.chomp.split(',').map(&:to_i)
  sum += price * num
  sum_of_num += num
  count += 1
end

puts sum
puts (sum_of_num.to_f / count.to_f).round
