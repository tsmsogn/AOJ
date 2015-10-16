# Field
module Field
  def self.calc(grid, n)
    answer = -Float::INFINITY

    for i in 0...n
      for j in 0...n
        if i > 0 && j > 0
          grid[i][j] += grid[i - 1][j] + grid[i][j - 1] - grid[i - 1][j - 1]
        elsif i > 0
          grid[i][j] += grid[i - 1][j]
        elsif j > 0
          grid[i][j] += grid[i][j - 1]
        end
      end
    end

    for i in 0...n
      for j in 0...n
        for k in 0..i
          for l in 0..j
            a = (k > 0) ? grid[k - 1][j] : 0
            b = (l > 0) ? grid[i][l - 1] : 0
            c = (k > 0 && l > 0) ? grid[k - 1][l - 1] : 0
            answer = [answer, grid[i][j] - a - b + c].max
          end
        end
      end
    end

    answer
  end
end

grid = []

n = gets.chomp.to_i

n.times do
  grid << gets.chomp.split.map(&:to_i)
end

puts Field.calc(grid, n)
