# Field
module Field
  def self.search_square(grid)
    dp = Array.new(1000) { Array.new(1000, 0) }
  
    for i in 0...grid.size
      for j in 0...grid[i].size
        if grid[i][j] == '*'
          dp[i][j] = 0
        else
          if i > 0 && j > 0
            dp[i][j] = [dp[i - 1][j - 1], dp[i - 1][j], dp[i][j - 1]].min + 1
          else
            dp[i][j] = 1
          end
        end
      end
    end

    dp.flatten.max
  end
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  grid = []
  n.times do
    grid << gets.chomp.split('')
  end

  puts Field::search_square(grid)
end
