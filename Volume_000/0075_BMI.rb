def bmi(weight, height)
  weight / (height ** 2)
end

overs = []

while line = gets
  id, weight, height = line.chomp.split(',')
  overs << id if bmi(weight.to_f, height.to_f) >= 25
end

puts overs
