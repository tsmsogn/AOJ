hash = Hash.new(0)
min_a, max_v = Float::INFINITY, -Float::INFINITY

n, q = gets.chomp.split.map(&:to_i)

q.times do
  a, v = gets.chomp.split.map(&:to_i)
  hash[a] += v
  if v > 0
    if hash[a] > max_v
      max_v = hash[a]
      min_a = a
    elsif hash[a] == max_v
      min_a = [a, min_a].min
    end
  else
    if a == min_a
      order = hash.sort do |(k1, v1), (k2, v2)|
        if v1 == v2
          k1 <=> k2
        else
          v2 <=> v1
        end
      end
      min_a, max_v = order.first[0], order.first[1]
    end
  end

  puts [min_a, max_v].join(' ')
end
