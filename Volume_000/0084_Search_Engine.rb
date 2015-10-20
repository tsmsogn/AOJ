while line = gets
  words = line.chomp.split(/(\s|,|\.)/).select do |x|
    x != '' && x != ' ' && x != ',' && x != '.' && x.size > 2 && x.size < 7
  end
  puts words.join(' ')
end
