while line = gets
  n = line.chomp.to_i
  break if n == 0

  dolls = []
  n.times do
    dolls << gets.chomp.split.map(&:to_i)
  end

  m = gets.chomp.to_i
  m.times do
    dolls << gets.chomp.split.map(&:to_i)
  end

  dolls.sort! do |a, b|
    a[0] * a[1] <=> b[0] * b[1]
  end

  i = 1
  until i == dolls.size
    if dolls[i - 1][0] < dolls[i][0] && dolls[i - 1][1] < dolls[i][1]
      i += 1
    else
      dolls.delete_at(i)
    end
  end

  puts i
end
