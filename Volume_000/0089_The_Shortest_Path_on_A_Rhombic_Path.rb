a = []

while line = gets
  a << line.chomp.split(',').map(&:to_i)
end

dp = Array.new(100) { Array.new(100, 0) }

dp[0][0] = a[0][0]

for i in 1...a.size
  for j in 0...a[i].size
    dp[i][j] = dp[i - 1][j] + a[i][j]
    dp[i][j] = [dp[i][j], dp[i - 1][j - 1] + a[i][j]].max if i <= a.size / 2 && j - 1 >= 0
    dp[i][j] = [dp[i][j], dp[i - 1][j + 1] + a[i][j]].max if i > a.size / 2
  end
end

puts dp[a.size - 1][0]
