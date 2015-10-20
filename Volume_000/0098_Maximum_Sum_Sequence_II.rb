n = gets.chomp.to_i

dp = Array.new(n + 1) { Array.new(n + 1, 0) }

n.times do |y|
  row = gets.chomp.split.map(&:to_i)
  n.times do |x|
    dp[y + 1][x + 1] = dp[y + 1][x] + dp[y][x + 1] - dp[y][x] + row[x]
  end
end

answer = -Float::INFINITY

for i in 1..n
  for j in 1..n
    for k in 1..i
      for l in 1..j
        answer = [answer, dp[i][j] - dp[k - 1][j] - dp[i][l - 1] + dp[k - 1][l - 1]].max
      end
    end
  end
end

puts answer
