while line = gets
  formula = line.chomp
  o, p, q = formula.split(/(\+|=)/).select { |x| x !~ /\+/ && x !~ /=/ }
  l, r = formula.split('=')

  range = 0..9
  [o, p, q].each do |value|
    if value.gsub('X', '0') != value.gsub('X', '0').to_i.to_s
      range = 1..9
      break
    end
  end

  answer = :NA
  for i in range
    if eval(l.gsub('X', i.to_s)).to_i == r.gsub('X', i.to_s).to_i
      answer = i
      break
    end
  end

  puts answer
end
