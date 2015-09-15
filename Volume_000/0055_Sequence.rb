while line = gets
  a = [line.chomp.to_f]
  9.times do |i|
    a[i + 1] = i.even? ? a[i] * 2 : a[i] / 3
  end

  puts sprintf('%.8f', a.inject(:+))
end
