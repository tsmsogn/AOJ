hash = Hash.new(0)

while line = gets
  a, b = line.chomp.split.map(&:to_i)
  if a == 0 && b == 0
    odds = hash.select { |key, value| value % 2 == 1 }
    puts (odds.keys == [1, 2]) ? :OK : :NG
    hash = Hash.new(0)
  end
  hash[a] += 1
  hash[b] += 1
end
