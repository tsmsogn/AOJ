while number = gets.to_i
  break if number == 0

  a = gets.split.map(&:to_i).each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
  b = a.sort_by { |k, v| -v }
  if b[0][1] > number / 2
    puts b[0][0]
  else
    puts 'NO COLOR'
  end
end
