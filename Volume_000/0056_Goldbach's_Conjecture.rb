def primes(max)
  nums = (2..max).each_with_object({}) { |num, hash| hash[num] = 1 }

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

  if n.even?
    for i in 2..(n / 2)
      j = n - i
      answer += 1 if primes[i] == 1 && primes[j] == 1
    end
  end

  puts answer
end
