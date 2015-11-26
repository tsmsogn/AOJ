while line = gets
  l = line.chomp.to_i
  break if l == 0

  count = 1
  12.times do
    m, n = gets.chomp.split.map(&:to_i)
    l -= (m - n)
    if l > 0
      count += 1
    end
  end

  puts (count > 12) ? :NA : count
end
