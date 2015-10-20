while line = gets
  flying_jenny = [1, 4, 1, 4, 1, 2, 1, 2]
  p = line.chomp.split.map(&:to_i)
  answer = []
  n = Float::INFINITY

  flying_jenny.size.times do
    m = 0
    for i in 0...flying_jenny.size
      m += p[i] - flying_jenny[i] if p[i] - flying_jenny[i] > 0
    end

    if m < n
      answer = flying_jenny.dup
      n = [m, n].min
    elsif m == n && (answer.empty? || flying_jenny.join.to_i < answer.join.to_i)
      answer = flying_jenny.dup
    end

    flying_jenny.rotate!
  end

  puts answer.join(' ')
end
