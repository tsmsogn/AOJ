require 'date'

while line = gets
  y, m, d = line.chomp.split.map(&:to_i)
  the_day = Date.new(y, m, d)

  if the_day.to_time.to_i < Date.new(1868, 9, 8).to_time.to_i
    puts "pre-meiji"
  elsif the_day.to_time.to_i <= Date.new(1912, 7, 29).to_time.to_i
    puts "meiji #{y - 1868 + 1} #{m} #{d}"
  elsif the_day.to_time.to_i <= Date.new(1926, 12, 24).to_time.to_i
    puts "taisho #{y - 1912 + 1} #{m} #{d}"
  elsif the_day.to_time.to_i <= Date.new(1989, 1, 7).to_time.to_i
    puts "showa #{y - 1926 + 1} #{m} #{d}"
  else
    puts "heisei #{y - 1989 + 1} #{m} #{d}"
  end
end
