def bmi(h, w)
  w / (h * 0.01)**2
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  min_i = Float::INFINITY
  min_diff = Float::INFINITY

  n.times do
    i, h, w = gets.chomp.split.map(&:to_i)
    bmi = bmi(h, w)
    diff = (bmi - 22).abs

    if diff == min_diff
      min_i = [i, min_i].min
    elsif diff < min_diff
      min_i = i
      min_diff = diff
    end
  end

  puts min_i
end 
