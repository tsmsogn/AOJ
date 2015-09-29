# Heron
module Heron
  def self.calc(a, b, c)
    s = (a + b + c) * 0.5
    Math.sqrt(s * (s - a) * (s - b) * (s - c))
  end
end

def dist(x1, y1, x2, y2)
  Math.sqrt((x1 - x2)**2 + (y1 - y2)**2)
end

def ccw(p1, p2, p3)
  dx1 = p2[0] - p1[0]
  dy1 = p2[1] - p1[1]
  dx2 = p3[0] - p1[0]
  dy2 = p3[1] - p1[1]

  cross_product = dx1 * dy2 - dy1 * dx2

  if cross_product < 0
    return -1
  elsif cross_product > 0
    return 1
  else
    return 0
  end
end

points = []

while line = gets
  points << line.chomp.split(',').map(&:to_f)
end

# sort by lower y-cordinate
points.sort! do |a, b|
  if a[1] == b[1]
    a[0] <=> b[0]
  else
    a[1] <=> b[1]
  end
end

# sort by polar angle with respect to base of points[0]
points[1...points.size] = points[1...points.size].sort! do |a, b|
  -ccw(points[0], a, b)
end

s = 0
for i in 1...points.size - 1
  p1 = points[0]
  p2 = points[i]
  p3 = points[i + 1]
  s += Heron.calc(dist(p1[0], p1[1], p2[0], p2[1]), dist(p2[0], p2[1], p3[0], p3[1]), dist(p3[0], p3[1], p1[0], p1[1]))
end

puts sprintf('%0.6f', s)
