while line = gets
  puts line.chomp.gsub(/(apple|peach)/) { ((%w(apple peach) - [$1])).first }
end
