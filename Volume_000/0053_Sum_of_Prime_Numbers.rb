max = 104743

$primes = (2..Math.sqrt(max).ceil).inject([*2..max]) do |nums, sieve|
  nums.reject { |num| num % sieve == 0 && num != sieve }
end

def s(x)
  answer = 0
  while x >= 0
    answer += $primes[x]
    x -= 1
  end
  answer
end

while line = gets
  n = line.chomp.to_i
  break if n == 0
  puts s(n - 1)
end