a = gets.chomp.split.map(&:to_i)
puts a.sort { |b, c| c <=> b }.join(' ')
