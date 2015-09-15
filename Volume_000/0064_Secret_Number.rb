answer = 0

while line = gets
  line.chomp.gsub(/\d+/) { |d| answer += d.to_i }
end

puts answer
