def calc(grid, x, y)
  grid.flatten.size.times do
    v = grid[y][x]
    return [x, y] if v == '.'
    if v == '>'
      x += 1
    elsif v == '<'
      x -= 1
    elsif v == '^'
      y -= 1
    elsif v == 'v'
      y += 1
    end
  end

  false
end

while line = gets
  h, w = line.chomp.split.map(&:to_i)
  break if h == 0 && w == 0
  grid = []

  h.times do
    grid << gets.chomp.split('')
  end

  res = calc(grid, 0, 0)
  puts (res) ? res.join(' ') : :LOOP
end
