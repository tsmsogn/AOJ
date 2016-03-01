n = gets.chop.to_i

n.times do
  puts eval(gets.chop.gsub(/=$/, ''))
end
