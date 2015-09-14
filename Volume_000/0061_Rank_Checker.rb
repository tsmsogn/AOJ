hash = Hash.new(0)

while line = gets
  a, b = line.chomp.split(',').map(&:to_i)
  break if a == 0 && b == 0
  hash[a] += b
end

scores = hash.values.uniq.sort { |a, b| b <=> a }

while line = gets
  c = line.chomp.to_i
  puts scores.count { |x| x > hash[c] } + 1
end
