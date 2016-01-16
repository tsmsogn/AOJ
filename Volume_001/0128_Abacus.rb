conv = {
  '0' => '* = ****',
  '1' => '* =* ***',
  '2' => '* =** **',
  '3' => '* =*** *',
  '4' => '* =**** ',
  '5' => ' *= ****',
  '6' => ' *=* ***',
  '7' => ' *=** **',
  '8' => ' *=*** *',
  '9' => ' *=**** '
}

has_prev = false

while line = gets
  stack = []

  num = sprintf('%05d', line.chomp)

  num.split('').each do |str|
    stack << conv[str].split('')
  end

  puts if has_prev

  for j in 0...8
    row = []
    for i in 0...num.length
      row << stack[i][j]
    end
    puts row.join
  end

  has_prev = true
end
