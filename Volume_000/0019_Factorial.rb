while line = gets
  n = line.chomp.to_i
  puts (1..n).inject(:*)
end
