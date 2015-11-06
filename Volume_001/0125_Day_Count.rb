require 'date'

while line = gets
  y1, m1, d1, y2, m2, d2 = line.chomp.split.map(&:to_i)
  break if y1 < 0 || m1 < 0 || d1 < 0 || y2 < 0 || m2 < 0 || d2 < 0
  date1, date2 = Date.new(y1, m1, d1), Date.new(y2, m2, d2)
  puts (date2 - date1).to_i
end
