criteria = [
  [60, 2, 600],
  [80, 5, 800],
  [100, 10, 1000],
  [120, 15, 1200],
  [140, 20, 1400],
  [160, 25, 1600]
]

while line = gets
  n = line.chomp.to_i
  break if n == 0

  fee = 0
  n.times do
    x, y, h, w = gets.chomp.split.map(&:to_i)

    criteria.each do |a|
      if x + y + h <= a[0] && w <= a[1]
        fee += a[2]
        break
      end
    end
  end

  puts fee
end
