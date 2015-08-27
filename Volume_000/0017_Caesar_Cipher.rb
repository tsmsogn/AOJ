table = ('a'..'z').to_a

while line = gets
  encoded = line.chomp.split('')
  for i in 0...table.size do
    decoded = ''
    for j in 0...encoded.size do
      index = table.index(encoded[j])
      if index
        decoded += table[(index + i) % (table.size)]
      else
        decoded += encoded[j]
      end
    end

    if decoded =~ /\b(the|this|that)\b/
      puts decoded
      break
    end
  end
end
