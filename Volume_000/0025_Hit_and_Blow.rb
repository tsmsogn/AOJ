while line = gets
  a = line.chomp.split.map(&:to_i)
  b = gets.chomp.split.map(&:to_i)

  hit = 0

  a.length.times do |i|
    hit += 1 if a[i] == b[i]
  end

  blow = (a & b).length - hit

  puts "#{hit} #{blow}"
end
