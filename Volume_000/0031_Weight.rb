weights = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]

while line = gets
  weight = line.chomp.to_i
  puts weights.select { |x| weight & x > 0 }.join(' ')
end
