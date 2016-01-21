def score(score_table)
  frame_scores = []

  for i in 0...10
    n1 = score_table.shift

    if n1 < 10
      n2 = score_table.shift
    else
      n2 = 0
    end

    if n1 == 10 # Strike
      n = n1 + score_table[0] + score_table[1]
    elsif n1 + n2 == 10 # Spare
      n = n1 + n2 + score_table[0]
    else # Another
      n = n1 + n2
    end

    frame_scores[i] = n
  end

  frame_scores.inject(:+)
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  stack = {}
  n.times do
    id, *score_table = gets.chomp.split.map(&:to_i)
    stack[id] = score(score_table)
  end

  stack = stack.sort do |(k1, v1), (k2, v2)|
    if v1 == v2
      k1 <=> k2
    else
      v2 <=> v1
    end
  end

  stack.each do |id, score|
    puts "#{id} #{score}"
  end
end
