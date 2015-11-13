def gcd(a, b, n = 1)
  a, b = b, a if a < b
  mod = a % b
  if mod == 0
    [b, n]
  else
    gcd(b, mod, n + 1)
  end
end

while line = gets
  a, b = line.chomp.split.map(&:to_i)
  break if a == 0 && b == 0 
  puts gcd(a, b).join(' ')
end
