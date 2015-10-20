def primes(max)
  nums = (2..max).each_with_object({}) { |num, hash| hash[num] = 1 }

  (2..Math.sqrt(max)).each do |sieve|
    if nums[sieve] == 1
      (2 * sieve).step(max, sieve).each do |num|
        nums[num] = 0
      end
    end
  end

  nums.select { |key, value| value == 1 }.keys.to_a
end

while line = gets
  n = line.chomp.to_i
  puts primes(n).size
end
