def primes(max)
  (2..Math.sqrt(max).ceil).inject([*2..max]) do |nums, sieve|
    nums.reject { |num| num % sieve == 0 && num != sieve }
  end
end

while line = gets
  n = line.chomp.to_i
  puts primes(n).size
end
