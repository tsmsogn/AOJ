def magic_square(grid, n)
  x, y = n / 2, n / 2 + 1
  grid[y][x] = 1

  for i in 2..(n * n)
    y += 1
    x += 1

    done = false

    loop do
      if x >= n
        x = 0
      elsif x < 0
        x = n - 1
      end
      if y >= n
        y = 0
      end

      if x >= 0 && x < n && y >= 0 && y < n && grid[y][x] != 0
        y += 1
        x -= 1
      end

      break if done

      done = true
    end

    grid[y][x] = i

   end
  grid
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  grid = Array.new(n) { Array.new(n, 0) }
  answer = magic_square(grid, n)
  answer.each do |row|
    puts row.map { |n| sprintf('%4d', n) }.join
  end

end
