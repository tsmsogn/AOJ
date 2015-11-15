indexes = {}

while line = gets
  word, page = line.chomp.split
  indexes[word] ||= []
  indexes[word] << page.to_i
end

indexes = indexes.sort do |(k1, v1), (k2, v2)|
  k1 <=> k2
end

indexes.each do |k, v|
  puts k
  puts v.sort { |a, b| a <=> b }.join(' ')
end
