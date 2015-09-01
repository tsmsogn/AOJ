def dist(x1, y1, x2, y2)
  Math.sqrt((x1 - x2)**2 + (y1 - y2)**2)
end

n = gets.chomp.to_i
n.times do
  xa, ya, ra, xb, yb, rb = gets.chomp.split.map(&:to_f)
  d = dist(xa, ya, xb, yb)
  if d > ra + rb
    puts 0
  elsif d < (ra - rb).abs
    puts (ra > rb) ? 2 : -2
  else 
    puts 1
  end
end
