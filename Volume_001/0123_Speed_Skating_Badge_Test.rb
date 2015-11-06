badges = {
  'AAA' => [35.5, 71.0],
  'AA'  => [37.5, 77.0],
  'A'   => [40.0, 83.0],
  'B'   => [43.0, 89.0],
  'C'   => [50.0, 105.0],
  'D'   => [55.0, 116.0],
  'E'   => [70.0, 148.0]
}

while line = gets
  a, b = line.chomp.split.map(&:to_f)

  answer = :NA
  badges.each do |key, value|
    if a < value[0] && b < value[1]
      answer = key
      break
    end
  end

  puts answer
end
