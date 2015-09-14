def inner_product(a1, a2, b1, b2)
  a1 * b1 + a2 * b2
end

while line = gets
  xA, yA, xB, yB, xC, yC, xD, yD = line.chomp.split().map(&:to_f)
  puts inner_product(xA - xB, yA - yB, xC - xD, yC - yD).abs < 1e-12 ? :YES : :NO
end
