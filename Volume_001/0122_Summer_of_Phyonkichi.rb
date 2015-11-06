def alive?(splinklers, n, x, y)
  jump = [
    [-1, -2], [0, -2], [1, -2],
    [2, -1], [2, 0], [2, 1],
    [1, 2], [0, 2], [-1, 2],
    [-2, 1], [-2, 0], [-2, -1]
  ]

  stack = Array.new(n + 1) { [] }
  stack[0] << [x, y]

  for i in 0...n
    until stack[i].empty?
      p = stack[i].pop
      for j in 0...jump.size
        _x = p[0] + jump[j][0]
        _y = p[1] + jump[j][1]
        d = (_x - splinklers[i][0])**2 + (_y - splinklers[i][1])**2
        if 0 <= _x && _x < 10 && 0 <= _y && _y < 10 && d <= 2
          stack[i + 1] << [_x, _y]
        end
      end
    end
  end

  stack[10].any?
end

while line = gets
  x, y = line.chomp.split.map(&:to_i)
  break if x == 0 && y == 0
  n = gets.chomp.to_i
  data = gets.chomp.split.map(&:to_i)
  splinklers = []
  for i in 0...n
    splinklers << data.slice(i * 2, 2)
  end

  puts (alive?(splinklers, n, x, y)) ? :OK : :NA
end
