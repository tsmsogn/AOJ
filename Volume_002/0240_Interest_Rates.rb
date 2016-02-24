def tanri(ganri, y, r)
  ganri * (1 + y * r * 0.01) 
end

def fukuri(ganri, y, r)
  ganri * (1 + r * 0.01) ** y
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  y = gets.chomp.to_i

  max_n = 0
  max_g = -Float::INFINITY
  n.times do
    b, r, t = gets.chomp.split.map(&:to_i)

    if t == 1
      g = tanri(10000, y, r)
    elsif t == 2
      g = fukuri(10000, y, r)
    end

    if g > max_g
      max_n = b
      max_g = g
    end
  end

  puts max_n
end
