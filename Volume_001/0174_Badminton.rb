while line = gets
  serves = line.chomp.split('')
  break if serves[0] == '0'
  scores = [0, 0]
  for i in 1...serves.size
    if serves[i] == 'A'
      scores[0] += 1
    else
      scores[1] += 1
    end
  end
  
  if scores[0] > scores[1]
    scores[0] += 1
  else
    scores[1] += 1
  end
  puts "#{scores[0]} #{scores[1]}"
end
