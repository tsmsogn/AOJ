answer = 0

while line = gets
  strings = line.chomp.split('')

  is_palindrome = true
  for i in 0..(strings.size / 2 - 1)
    if strings[i] != strings[(i + 1) * -1]
      is_palindrome = false
      break
    end
  end

  answer += 1 if is_palindrome
end

puts answer
