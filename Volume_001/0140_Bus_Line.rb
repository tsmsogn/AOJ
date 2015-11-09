bus_link = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 5, 4, 3, 2, 1]

n = gets.chomp.to_i

n.times do
  a, b = gets.chomp.split.map(&:to_i)

  answer = []
  min_size = Float::INFINITY
  for i in 0...bus_link.size
    next if a != bus_link[i]
    start_index = i
    for j in (i + 1)...(i + bus_link.size)
      j %= bus_link.size
      next if b != bus_link[j]
      last_index = j
      if  start_index > last_index
        c = bus_link[start_index...bus_link.size] + bus_link[0..last_index]
      else
        c = bus_link[start_index..last_index]
      end

      if c.size < min_size
        min_size = c.size
        answer = c
      end

      break
    end
  end

  puts answer.join(' ')
end
