def cross_product(ax, ay, bx, by)
  ax * by - ay * bx
end

while line = gets
  xa, ya, xb, yb, xc, yc, xd, yd = line.chomp.split(',').map(&:to_f)
  s1 = cross_product(xb - xa, yb - ya, xc - xa, yc - ya)
  s2 = cross_product(xc - xb, yc - yb, xd - xb, yd - yb)
  s3 = cross_product(xd - xc, yd - yc, xa - xc, ya - yc)
  s4 = cross_product(xa - xd, ya - yd, xb - xd, yb - yd)
  puts (s1 > 0 && s2 > 0 && s3 > 0 && s4 > 0 || s1 < 0 && s2 < 0 && s3 < 0 && s4 < 0) ? :YES : :NO
end
