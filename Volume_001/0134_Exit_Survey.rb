sum = 0

n = gets.chomp.to_i
n.times do
  sum += gets.chomp.to_i
end

puts sum / n
