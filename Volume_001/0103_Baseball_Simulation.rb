n = gets.chomp.to_i

n.times do
  stack = Array.new(3, 0)
  score, out = 0, 0
  while out < 3
    case gets.chomp
    when 'HIT' then
      score += stack.shift
      stack << 1
    when 'HOMERUN' then
      score += stack.select { |x| x == 1 }.size + 1
      stack = Array.new(3, 0)
    when 'OUT' then
      out += 1
    end
  end

  puts score
end
