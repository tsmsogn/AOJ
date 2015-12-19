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

max = 1_000_000

primes = primes(max)

nums = (2..max).select { |num| primes[num] == 1 }

while line = gets
  n = line.chomp.to_i
  break if n == 0

  answer = 0

  for i in nums
    j = n - i
    break if i > j
    answer += 1 if primes[j] == 1
  end

  puts answer
end
