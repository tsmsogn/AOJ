has_prev = false

while line = gets
  n = line.chomp.to_i
  break if n == 0
  teams = Hash.new(0)
  n.times do
    data = gets.chomp.split
    teams[data[0]] = data[1].to_i * 3 + data[3].to_i
  end
  
  teams = teams.sort do |(k1, v1), (k2, v2)|
    if v1 == v2
      -1
    else
      v2 <=> v1
    end
  end

  puts if has_prev

  teams.each do |key, value|
    puts "#{key},#{value}"
  end

  has_prev = true
end
