def gcd(a, b)
  a, b = b, a if a < b
  if b == 0
    a
  else
    gcd(b, a % b)
  end
end

def lcm(a, b)
  a / gcd(a, b) * b
end

while line = gets
  a, b = line.chomp.split.map(&:to_i)
  puts "#{gcd(a, b)} #{lcm(a, b)}"
end
