while line = gets
  a, b, n = line.chomp.split.map(&:to_i)
  answer = 0

  n.times do
    a = a % b * 10
    answer += a / b
  end

  puts answer
end
