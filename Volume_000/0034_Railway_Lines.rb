while line = gets
  l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, v1, v2 = line.chomp.split(',').map(&:to_i)
  ratio = v1.to_f / (v1.to_f + v2.to_f)
  distance = [l1, l2, l3, l4, l5, l6, l7, l8, l9, l10]
  sum_distance = distance.inject(:+)

  i, y = 0, 0
  while y < sum_distance * ratio
    y += distance[i]
    i += 1
  end

  puts i
end
