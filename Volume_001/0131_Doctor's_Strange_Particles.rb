dx = [0, 0, 1, 0, -1]
dy = [0, -1, 0, 1, 0]

n = gets.chomp.to_i

n.times do
  original = []
  10.times do
    original << gets.chomp.split.map(&:to_i)
  end

  for i in 0...(1 << 10)
    clone = Marshal.load(Marshal.dump(original))
    for j in 0...10
      clone[0][j] ^= i >> j & 1
    end

    result = Array.new(10) { Array.new(10, 0) }

    for y in 1...10
      for x in 0...10
        if clone[y - 1][x] == 1
          result[y][x] = 1
          for i in 0...5
            if x + dx[i] >= 0 && x + dx[i] < 10 && y + dy[i] >= 0 && y + dy[i] < 10
              clone[y + dy[i]][x + dx[i]] ^= 1 
            end
          end
        end
      end
    end

    unless clone.flatten.include?(1)
      result.each do |row|
        puts row.join(' ')
      end
      break
    end
  end
end
