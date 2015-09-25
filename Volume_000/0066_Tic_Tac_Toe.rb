def winner(cells)
  winner_patterns = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  winner_patterns.each do |winner_pattern|
    a, b, c = winner_pattern
    return cells[a] if cells.values_at(a, b, c).uniq.size == 1 && cells.values_at(a, b, c).uniq.first != 's'
  end   
  'd'
end

while line = gets
  cells = line.chomp.split('')
  puts winner(cells)
end
