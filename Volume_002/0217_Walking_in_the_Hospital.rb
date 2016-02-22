while line = gets
  n = line.chomp.to_i
  break if n == 0

  answer_p = 0
  answer_d = -Float::INFINITY
  n.times do
    p, d1, d2 = gets.chomp.split.map(&:to_i)
    d = d1 + d2
    if answer_d < d
      answer_p = p
      answer_d = d
    end
  end

  puts "#{answer_p} #{answer_d}"
end
