conv = {
  '11' => 'a', '12' => 'b', '13' => 'c', '14' => 'd', '15' => 'e',
  '21' => 'f', '22' => 'g', '23' => 'h', '24' => 'i', '25' => 'j',
  '31' => 'k', '32' => 'l', '33' => 'm', '34' => 'n', '35' => 'o',
  '41' => 'p', '42' => 'q', '43' => 'r', '44' => 's', '45' => 't',
  '51' => 'u', '52' => 'v', '53' => 'w', '54' => 'x', '55' => 'y',
  '61' => 'z', '62' => '.', '63' => '?', '64' => '!', '65' => ' '
}

while line = gets
  encode = line.chomp

  decode = ''
  if encode.length % 2 == 0
    encode.each_char.each_slice(2).map(&:join).each do |str|
      if conv[str].nil?
        decode = :NA
        break
      end
      decode += conv[str]
    end
  else
    decode = :NA
  end

  puts decode
end
