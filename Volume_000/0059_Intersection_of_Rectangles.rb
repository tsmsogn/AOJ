while line = gets
  xa1, ya1, xa2, ya2, xb1, yb1, xb2, yb2 = line.chomp.split.map(&:to_f)
  puts (xa2 < xb1 || xb2 < xa1 || ya2 < yb1 || yb2 < ya1) ? :NO : :YES
end
