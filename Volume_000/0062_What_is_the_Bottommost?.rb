def calc(a)
  while a.size > 1
    b = []
    for i in 0...(a.size - 1)
      b << (a[i] + a[i + 1]) % 10
    end
    a = b
  end

  a.first
end

while line = gets
  stack = line.chomp.split('').map(&:to_i)
  puts calc(stack)
end
