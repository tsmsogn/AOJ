def gcd(a, b)
  a, b = b, a if a < b
  mod = a % b
  if mod == 0
    b
  else
    gcd(b, mod)
  end
end

def lcm(a, b)
  a * b / gcd(a, b)
end

while line = gets
  a, b = line.chomp.split.map(&:to_i)
  puts "#{gcd(a, b)} #{lcm(a, b)}"
end
