table = Array.new(51, 0)

for a in 0..9 do
  for b in 0..9 do
    for c in 0..9 do
      for d in 0..9 do
        table[a + b + c + d] += 1
      end
    end
  end
end

while line = gets
  n = line.chomp.to_i
  puts table[n]
end
