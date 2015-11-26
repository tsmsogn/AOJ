cov = {1 => 2, 2 => 3, 3 => 1}

loop do
  a = []
  a << gets.to_i
  break if a[0] == 0
  4.times do
    a << gets.to_i
  end
  b = a.uniq
  a.each do |item|
    if b.size == 2
      puts (b.include? cov[item]) ? 1 : 2
    else
      puts 3
    end
  end
end
