classes = {}

while line = gets
  name, *v = line.chomp.split
  v.map!(&:to_i)
  classes[name] ||= [0, 0]
  classes[name][0] += v[0]
  classes[name][1] += v[1]
end

classes.each do |key, value|
  puts "#{key} #{value[0] + value[1]} #{value[0] * 200 + value[1] * 300}"
end
