def get_max_length(grid, n)
  max_length = 0

  for y in 0...n
    length = 0
    for x in 0...n
      if grid[y][x] == 1
        length += 1
        max_length = length if length > max_length
      else
        length = 0
      end
    end
  end

  for x in 0...n
    length = 0
    for y in 0...n
      if grid[y][x] == 1
        length += 1
        max_length = length if length > max_length
      else
        length = 0
      end
    end
  end

  for i in 0..(n * 2 - 2)
    length = 0
    x = 0
    y = i - x
    while x < n && y >= 0
      if y < n && grid[y][x] == 1
        length += 1
        max_length = length if length > max_length
      else
        length = 0
      end
      x += 1
      y -= 1
    end
  end

  for i in -(n - 1)..(n - 1)
    length = 0
    x = 0
    y = i + x
    while x < n && y < n
      if y >= 0 && grid[y][x] == 1
        length += 1
        max_length = length if length > max_length
      else
        length = 0
      end
      x += 1
      y += 1
    end
  end

  max_length
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  grid = []
  n.times do
    grid << gets.chomp.split('').map(&:to_i)
  end

  puts get_max_length(grid, n)
end
