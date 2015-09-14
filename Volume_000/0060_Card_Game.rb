cards = [*1..10]

while line = gets
  c1, c2, c3 = line.chomp.split.map(&:to_i)
  rest_cards = cards - [c1, c2, c3]
  puts (rest_cards.take_while { |x| x + c1 + c2 <= 20 }.size.to_f / rest_cards.size.to_f >= 0.5) ? :YES : :NO
end
