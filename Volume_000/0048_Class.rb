classes = {
  'light fly' => 48,
  'fly' => 51,
  'bantam' => 54,
  'feather' => 57,
  'light' => 60,
  'light welter' => 64,
  'welter' => 69,
  'light middle' => 75,
  'middle' => 81,
  'light heavy' => 91,
  'heavy' => Float::INFINITY
}

while line = gets
  weight = line.chomp.to_f
  classes.each do |key, value|
    if weight <= value
       puts key
      break
    end
  end
end
