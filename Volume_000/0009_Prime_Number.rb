def count_primes(max)
  nums = Array.new(max + 1, 1)
  nums[0] = nums[1] = 0

  (2..Math.sqrt(max)).each do |sieve|
    if nums[sieve] == 1
      (2 * sieve).step(max, sieve).each do |num|
        nums[num] = 0
      end
    end
  end

  nums.select { |num| num == 1 }.size
end

while line = gets
  n = line.chomp.to_i
  puts count_primes(n)
end
