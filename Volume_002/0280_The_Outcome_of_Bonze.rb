while line = gets
  n = line.chomp.to_i
  break if n == 0

  stack = Array.new(n + 1, 0)
  cards = gets.chomp.split('')

  for i in 0...cards.size
    if cards[i] == 'M'
      stack[i % n] += 1
    elsif cards[i] == 'S'
      stack[-1] += stack[i % n] + 1
      stack[i % n] = 0
    elsif cards[i] == 'L'
      stack[i % n] += stack[-1] + 1
      stack[-1] = 0
    end
  end

  stack[0...n] = stack[0...n].sort do |a, b|
    a <=> b
  end
  puts stack.join(' ')
end
