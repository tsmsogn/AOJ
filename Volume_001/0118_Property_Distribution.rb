def calc(grid, h, w)
  count = 0
  d = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  stack = []

  for j in 0...h
    for i in 0...w
      next if grid[j][i] == 0

      count += 1
      stack << [i, j]

      until stack.empty?
        t = stack.pop
        v = grid[t[1]][t[0]]
        grid[t[1]][t[0]] = 0

        for k in 0...4
          m = t[1] + d[k][1]
          n = t[0] + d[k][0]
          if 0 <= n && n < w && 0 <= m && m < h && grid[m][n] != 0 && grid[m][n] == v
            stack << [n, m]
          end
        end
      end
    end
  end

  count
end

while line = gets
  h, w = line.chomp.split.map(&:to_i)
  break if h == 0 && w == 0

  grid = []

  h.times do
    grid << gets.chomp.split('')
  end

  puts calc(grid, h, w)
end
