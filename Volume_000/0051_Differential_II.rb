n = gets.chomp.to_i

n.times do
  integers = gets.chomp.split('').map(&:to_i)
  puts integers.sort { |a, b| b <=> a }.join.to_i - integers.sort.join.to_i
end
