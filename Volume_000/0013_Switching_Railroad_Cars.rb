a = []

while line = gets
  n = line.chomp.to_i

  if n == 0
    puts a.pop
  else
    a << n
  end
end
