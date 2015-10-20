while line = gets
  n = line.chomp.to_i
  break if n == 0
  change = 1000 - line.chomp.to_i
  i = 0
  [500, 100, 50, 10, 5, 1].each do |currency|
    i += change / currency
    change = change % currency
  end
  puts i
end
