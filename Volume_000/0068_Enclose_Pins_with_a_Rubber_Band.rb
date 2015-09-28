# GrahamScan
module GrahamScan
  def self.calc(data)
    points = data.map do |data|
      Point.new(data)
    end

    # sort by lower y-cordinate
    points.sort! do |a, b|
      if a.y == b.y
        a.x <=> b.x
      else
        a.y <=> b.y
      end
    end

    # sort by polar angle with respect to base of points[0]
    points[1...points.size] = points[1...points.size].sort! do |a, b|
      -ccw(points[0], a, b)
    end

    hull = []
    hull << points[0]
    hull << points[1]
    hull << points[2]

    for i in 3...points.size
      top = hull.pop

      while ccw(hull.last, top, points[i]) != 1
        top = hull.pop
      end
      hull << top
      hull << points[i]
    end

    hull
  end

  def self.ccw(p1, p2, p3)
    dx1 = p2.x - p1.x
    dy1 = p2.y - p1.y
    dx2 = p3.x - p1.x
    dy2 = p3.y - p1.y

    cross_product = dx1 * dy2 - dy1 * dx2

    if cross_product < 0
      return -1
    elsif cross_product > 0
      return 1
    else
      return 0
    end
  end

  # Point
  class Point
    attr_reader :x, :y

    def initialize(data)
      @x, @y = data
    end
  end
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  data = []
  n.times do
    data << gets.chomp.split(',').map(&:to_f)
  end

  hull = GrahamScan.calc(data)
  puts n - hull.size
end
