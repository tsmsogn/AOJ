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

max = 50_000

primes = primes(max)

while line = gets
  n = line.chomp.to_i
  break if n == 0

  answer = 0

  for i in 2..(n / 2)
    j = n - i
    answer += 1 if primes[i] == 1 && primes[j] == 1
  end

  puts answer
end
