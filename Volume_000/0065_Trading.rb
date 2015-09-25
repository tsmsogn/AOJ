last_month = Hash.new(0)
current_month = Hash.new(0)

while line = gets
  break if line.chomp == ''
  id, day = line.chomp.split(',').map(&:to_i)
  last_month[id] += 1
end

while line = gets
  break if line.chomp == ''
  id, day = line.chomp.split(',').map(&:to_i)
  current_month[id] += 1
end

duplications = last_month.keys & current_month.keys

duplications.sort.each do |d|
  puts "#{d} #{last_month[d] + current_month[d]}"
end
