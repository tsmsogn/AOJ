# Field
module Field
  def self.num_islands(grid)
    count = 0

    for i in 0...grid.size
      for j in 0...grid[i].size
        if grid[i][j] == 1
          count += 1
          dfs(grid, i, j)
        end
      end
    end

    count
  end

  def self.dfs(grid, i, j)
    return if grid[i][j] == 0
    grid[i][j] = 0

    search = [[1, 0], [0, 1], [-1, 0], [0, -1]]

    for k in 0...search.size
      l = i + search[k][0]
      m = j + search[k][1]
      dfs(grid, l, m) if 0 <= l && l < grid.size && 0 <= m && m < grid[l].size
    end
  end

  def self.graph(grid)
    grid.each do |row|
      puts row.join
    end
  end
end

loop do
  grid = []
  12.times do
    grid << gets.chomp.split('').map(&:to_i)
  end

  puts Field.num_islands(grid)

  break if gets.nil?
end
