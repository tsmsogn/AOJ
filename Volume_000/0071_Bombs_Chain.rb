# Field
module Field
  def self.bomb(grid, x, y)
    return grid if grid[x][y] == 0
    grid[x][y] = 0

    search = [
      [1, 0], [0, 1], [-1, 0], [0, -1],
      [2, 0], [0, 2], [-2, 0], [0, -2],
      [3, 0], [0, 3], [-3, 0], [0, -3]
    ]

    for k in 0...search.size
      l = x + search[k][0]
      m = y + search[k][1]
      bomb(grid, l, m) if 0 <= l && l < grid.size && 0 <= m && m < grid[l].size
    end

    grid
  end

  def self.graph(grid)
    grid.each do |row|
      puts row.join
    end
  end
end

n = gets.chomp.to_i

for i in 1..n
  gets

  grid = []

  8.times do
    grid << gets.chomp.split('').map(&:to_i)
  end

  x = gets.chomp.to_i
  y = gets.chomp.to_i

  puts "Data #{i}:"
  Field.graph(Field.bomb(grid, y - 1, x - 1))
end
