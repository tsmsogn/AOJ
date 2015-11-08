def middle_square(n, s)
  sprintf("%0#{2 * n}d", s**2).slice(n - 2, n).to_i
end

count = 1
n = gets.chomp.to_i

n.times do
  puts "Case #{count}:"
  s = gets.chomp.to_i
  10.times do
    s = middle_square(4, s)
    puts s
  end
  count += 1
end
