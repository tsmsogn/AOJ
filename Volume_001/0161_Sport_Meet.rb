while line = gets
  n = line.chomp.to_i
  break if n == 0
  
  scores = []
  
  n.times do
    c1, m1, s1, m2, s2, m3, s3, m4, s4 = gets.chomp.split.map(&:to_i)
    scores << [c1, (m1 + m2 + m3 + m4) * 60 + s1 + s2 + s3 + s4]
  end

  scores.sort! do |a, b|
    a[1] <=> b[1]
  end

  puts scores[0][0]
  puts scores[1][0]
  puts scores[-2][0]
end
