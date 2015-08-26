while n = gets.chomp.to_i
  break if n == 0

  salers = Hash.new(0)

  n.times do
    i, p, q = gets.chomp.split.map(&:to_i)
    salers[i] += p * q
  end

  million_salers = salers.select { |key, value| value >= 1_000_000 }
  if million_salers.any?
    million_salers.each do |key, value|
      puts key
    end
  else
    puts 'NA'
  end

end
