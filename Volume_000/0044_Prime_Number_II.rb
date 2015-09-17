max = 50021

primes = (2..Math.sqrt(max).ceil).inject([*2..max]) do |nums, sieve|
  nums.reject { |num| num % sieve == 0 && num != sieve }
end

while line = gets
  n = line.chomp.to_i
  min = primes.take_while { |x| x < n }.max
  max = primes.sort { |a, b| b <=> a }.take_while { |x| x > n }.min
  puts "#{min} #{max}" 
end
