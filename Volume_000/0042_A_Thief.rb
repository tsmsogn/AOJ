# Knapsack
module Knapsack
  def self.calc(w, data)
    items = data.map do |data|
      Item.new(data)
    end

    dp = Array.new(items.size + 1) { Array.new(w + 1, 0) }

    for i in 1..items.size
      item = items[i - 1]
      for j in 1..w
        if item.weight <= j
          dp[i][j] = [item.value + dp[i - 1][j - item.weight], dp[i - 1][j]].max
        else
          dp[i][j] = dp[i - 1][j]
        end
      end
    end

    max_value, max_weight = -Float::INFINITY, -Float::INFINITY
    for j in 1..w
      if max_value < dp[items.size][j]
        max_value = dp[items.size][j]
        max_weight = j
      end
    end

    [max_value, max_weight]
  end

  # Item
  class Item
    attr_reader :value, :weight

    def initialize(args)
      @value, @weight = args
    end
  end
end

count = 1

while line = gets
  w = line.chomp.to_i
  break if w == 0

  items = []

  n = gets.chomp.to_i

  n.times do
    items << gets.chomp.split(',').map(&:to_i)
  end

  puts "Case #{count}:"
  puts Knapsack::calc(w, items)

  count += 1
end
