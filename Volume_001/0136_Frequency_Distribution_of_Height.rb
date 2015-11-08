hash = {
  1 => 0,
  2 => 0,
  3 => 0,
  4 => 0,
  5 => 0,
  6 => 0,
}

n = gets.chomp.to_i

n.times do
  height = gets.chomp.to_f
  if height < 165.0
    hash[1] += 1
  elsif height < 170.0
    hash[2] += 1
  elsif height < 175.0
    hash[3] += 1
  elsif height < 180.0
    hash[4] += 1
  elsif height < 185.0
    hash[5] += 1
  else
    hash[6] += 1
  end
end

hash.each do |key, value|
  puts sprintf('%d:%s', key, '*' * value)
end
