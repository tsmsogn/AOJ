while n = gets.chomp.to_i
  break if n == 0

  a = []

  n.times do
    a << gets.chomp.split.map(&:to_i)
  end

  a.each do |i|
    i << i.inject { |sum, n | sum + n }
  end

  a = a.transpose

  a.each do |i|
    i << i.inject { |sum, n | sum + n }
  end

  a = a.transpose

  a.each do |i|
    puts i.map { |item| sprintf('%5d', item) }.join
  end

end
