# Paper
class Paper
  def initialize(x, y)
    @x, @y, @grids = x, y, Array.new(x) { Array.new(y, 0) }
  end

  def dye(x, y, d)
    for i in (0..(@x - 1)) do
      for j in (0..(@y - 1)) do
        @grids[i][j] += 1 if (x - i)**2 + (y - j)**2 <= d
      end
    end
  end

  def graph
    @grids.transpose.each do |row|
      puts row.join(' ')
    end
  end

  def max_density
    @grids.flatten.max
  end

  def while_grids_sum
    @grids.flatten.select { |x| x == 0 }.size
  end
end

inks = [1, 2, 4]

paper = Paper.new(10, 10)

while line = gets
  x, y, size = line.chomp.split(',').map(&:to_i)
  paper.dye(x, y, inks[size - 1])
end

puts paper.while_grids_sum
puts paper.max_density
