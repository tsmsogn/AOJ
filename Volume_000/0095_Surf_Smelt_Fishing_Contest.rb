hash = Hash.new(0)

n = gets.chomp.to_i

n.times do
  a, v = gets.chomp.split.map(&:to_i)
  hash[a] += v
end

hash = hash.sort do |(k1, v1), (k2, v2)|
  if v1 == v2
    k1 <=> k2
  else
    v2 <=> v1
  end
end

puts hash.shift.join(' ')
