while line = gets
  break if line.chomp == '0'

  cards = line.chomp.split.map(&:to_i)

  dp = Array.new(cards.size + 1) { Array.new(22, 0) }

  dp[0][0] = 1

  for i in 0...cards.size
    card = cards[i]
    for j in 0...22
      if card == 1
        dp[i + 1][j] = [dp[i + 1][j], dp[i][j - 1]].max if j - 1 >= 0 && j - 1 < 22
        dp[i + 1][j] = [dp[i + 1][j], dp[i][j - 11]].max if j - 11 >= 0 && j - 11 < 22
      else
        card = 10 if card > 10
        dp[i + 1][j] = dp[i][j - card] if j - card >= 0 && j - card < 22
      end
    end
  end

  a = 0
  for i in 0...22
    a = i if dp[cards.size][i] == 1
  end
  puts a
end
