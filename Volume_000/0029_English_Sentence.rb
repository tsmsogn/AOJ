a = Hash.new(0)

words = gets.chomp.split
words.each do |word|
  a[word] += 1
end

mode_value = a.sort { |a, b| b[1] <=> a[1] }
max_size = a.sort { |a, b| b[0].size <=> a[0].size }

puts "#{mode_value[0][0]} #{max_size[0][0]}"
