def roman_to_arabic(roman)
  roman_arabic = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  arabic = 0
  for i in 0...roman.size
    a, b = roman[i], roman[i + 1]
    left = roman_arabic[a] || 0
    right = roman_arabic[b] || 0
    if left < right
      arabic -= left
    else
      arabic += left
    end
  end
  arabic
end

while line = gets
  puts roman_to_arabic(line.chomp)
end
