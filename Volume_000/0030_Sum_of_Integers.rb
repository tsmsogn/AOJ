a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

while line = gets
  n, s = line.chomp.split.map(&:to_i)
  break if n == 0 && s == 0
  puts a.combination(n).select { |x| s == x.inject(:+) }.size
end
