def leap_year?(y)
  y % 4 == 0 && (y % 100 != 0 || y % 400 == 0)
end

answers = []

while line = gets
  a, b = line.chomp.split.map(&:to_i)
  break if a == 0 && b == 0

  leap_years = []
  (a..b).each do |year|
    leap_years << year if leap_year?(year)
  end

  answers << leap_years
end

out = []
answers.each do |answer|
  if answer.any?
    out << answer.join("\n")
  else
    out << :NA
  end
end

puts out.join("\n\n")
