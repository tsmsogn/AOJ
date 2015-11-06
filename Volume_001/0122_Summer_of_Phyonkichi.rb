JUMP = [
  [-1, -2], [0, -2], [1, -2],
  [2, -1], [2, 0], [2, 1],
  [1, 2], [0, 2], [-1, 2],
  [-2, 1], [-2, 0], [-2, -1]
]

def dfs(x, y, splinklers, n, depth = 0)
  return true if depth == n

  for i in 0...JUMP.size
    _x = x + JUMP[i][0]
    _y = y + JUMP[i][1]
    d = (_x - splinklers[depth][0])**2 + (_y - splinklers[depth][1])**2
    if 0 <= _x && _x < 10 && 0 <= _y && _y < 10 && d <= 2
      return true if dfs(_x, _y, splinklers, n, depth + 1)
    end
  end

  false
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

  puts (dfs(x, y, splinklers, n)) ? :OK : :NA
end
