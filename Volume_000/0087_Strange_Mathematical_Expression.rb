def float?(str)
  Float(str)
  true
rescue ArgumentError
  false
end

while line = gets
  a = line.chomp.split
  b = []
  while a.any?
    a.join(' ')
    str = a.shift
    if float?(str)
      b << str.to_f
    else
      c = b.pop
      d = b.pop
      b << eval("#{d} #{str} #{c}")
    end
  end

  puts sprintf('%.6f', b.pop + 0.0)
end
