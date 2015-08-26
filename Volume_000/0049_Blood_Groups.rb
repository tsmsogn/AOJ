bloods = {'A' => 0, 'B' => 0, 'AB' => 0, 'O' => 0}

while line = gets
  a, b = line.chomp.split(',')
  bloods[b] += 1
end

bloods.each_value do |value|
  puts value
end
