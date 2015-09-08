n = gets.chomp.to_i

n.times do
  balls = gets.chomp.split.map(&:to_i)
  a = [0, 0]

  while balls.any?
    ball = balls[0]
    if a.max < ball
      index = a.index(a.max)
      a[index] = ball
    elsif a.min < ball
      index = a.index(a.min)
      a[index] = ball
    else
      break
    end
    balls.shift
  end

  puts (balls.empty?) ? :YES : :NO
end
