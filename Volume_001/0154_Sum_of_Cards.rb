while line = gets
  m = line.chomp.to_i
  break if m == 0

  dp = Array.new(101) { Array.new(1001, 0) }
  a = []
  b = []

  m.times do
    stack = gets.chomp.split.map(&:to_i)
    a << stack[0]
    b << stack[1]
  end

  dp[0][0] = 1

  for i in 0...m
    for j in 0..b[i]
      for k in 0..1000
        dp[i + 1][k] += dp[i][k - a[i] * j] if k - a[i] * j >= 0
      end
    end
  end

  g = gets.chomp.to_i

  g.times do
    v = gets.chomp.to_i
    puts dp[m][v]
  end
end
