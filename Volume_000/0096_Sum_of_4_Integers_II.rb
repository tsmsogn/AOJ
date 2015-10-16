dp = Array.new(5) { Array.new(4001, 0) }
dp[0].fill(0..1000) { 1 }

for i in 1...4
  for j in 0..4000
    for k in 0..1000
      break if j - k < 0
      dp[i][j] += dp[i - 1][j - k]
    end
  end
end

while line = gets
  n = line.chomp.to_i
  puts dp[3][n]
end
