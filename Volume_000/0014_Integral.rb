def f(x)
  x**2
end

while line = gets
  d = line.chomp.to_i
  s = 0
  (600 / d).times do |i|
    x = i * d
    s += f(x) * d
  end

  puts s
end
