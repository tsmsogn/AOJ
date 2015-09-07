a = Array.new(101, 0)

while line = gets
  n = line.chomp.to_i
  a[n] += 1
end

puts (0..100).select { |x| a[x] == a.max }
