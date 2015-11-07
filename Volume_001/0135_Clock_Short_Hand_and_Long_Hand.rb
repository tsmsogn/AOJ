n = gets.chomp.to_i

n.times do
  h, m = gets.chomp.split(':').map(&:to_f)
  diff = (h * 30 + m * 0.5 - m * 6).abs
  diff = 360 - diff if diff > 180
  if diff < 30
    puts :alert
  elsif diff < 90
    puts :warning
  else
    puts :safe
  end
end
