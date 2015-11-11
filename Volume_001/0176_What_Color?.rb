COLORS =  {
  'black'   => ['00', '00', '00'],
  'blue'    => ['00', '00', 'ff'],
  'lime'    => ['00', 'ff', '00'],
  'aqua'    => ['00', 'ff', 'ff'],
  'red'     => ['ff', '00', '00'],
  'fuchsia' => ['ff', '00', 'ff'],
  'yellow'  => ['ff', 'ff', '00'],
  'white'   => ['ff', 'ff', 'ff']
}

def d(r, g, b, rk, gk, bk)
  Math.sqrt((r - rk)**2 + (g - gk)**2 + (b - bk)**2)
end

while line = gets
  break if line.chomp == '0'
  *rgb = line.chomp.gsub(/^#/, '').scan(/.{2}/)

  similar_color = ''
  d_min = Float::INFINITY

  COLORS.each do |key, value|
    d = d(*value.map { |s| s.to_i(16) }, *rgb.map { |s| s.to_i(16) })
    if d < d_min
      similar_color = key
      d_min = d
    end
  end

  puts similar_color
end
