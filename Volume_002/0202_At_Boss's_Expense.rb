def primes(max)
  nums = Array.new(max + 1, 1)
  nums[0] = nums[1] = 0

  (2..Math.sqrt(max)).each do |sieve|
    if nums[sieve] == 1
      (2 * sieve).step(max, sieve).each do |num|
        nums[num] = 0
      end
    end
  end

  nums
end

def prices(max, costs)
  dp = Array.new(max + 1, 0)

  costs.sort!

  for i in 1..max
    costs.each do |cost|
      if i - cost >= 0 && (i - cost == 0 || dp[i - cost] == 1)
        dp[i] = 1
        break
      end
    end
  end

  dp
end

primes = primes(1_000_000)

while line = gets
  n, x = line.chomp.split.map(&:to_i)
  break if n == 0 && x == 0

  costs = []
  n.times do
    costs << gets.chomp.to_i
  end

  prices = prices(x, costs)

  answer = :NA
  x.downto(1) do |num|
    if primes[num] == 1 && prices[num] == 1
      answer = num
      break
    end
  end

  puts answer
end
