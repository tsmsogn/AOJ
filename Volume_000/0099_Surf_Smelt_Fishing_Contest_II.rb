hash = Hash.new(0)

n, q = gets.chomp.split.map(&:to_i)

q.times do
  a, v = gets.chomp.split.map(&:to_i)
  hash[a] += v
  order = hash.sort do |(k1, v1), (k2, v2)|
    if v1 == v2
      k1 <=> k2
    else
      v2 <=> v1
    end
  end

  first = order.first
  puts [first[0], first[1]].join(' ')
end
