def collatz(n)
  if n == 1
    n
  elsif n % 2 == 0
    n /= 2
  elsif n % 2 == 1
    n = n * 3 + 1
  end
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  c = 0
  until n == 1
    n = collatz(n)
    c += 1
  end

  puts c
end
