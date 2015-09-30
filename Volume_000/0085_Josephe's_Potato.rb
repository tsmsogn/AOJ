while line = gets
  n, m = line.chomp.split.map(&:to_i)
  break if n == 0 && m == 0

  a = [*1..n]
  index = m - 1

  while a.size > 1
    a.delete_at(index)
    index = (index + m - 1) % a.size
  end

  puts a.first
end
