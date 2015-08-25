gets.chomp.to_i.times do
  a, b, c = gets.chomp.split.map(&:to_i).sort
  puts (c**2 == a**2 + b**2) ? :YES : :NO
end
