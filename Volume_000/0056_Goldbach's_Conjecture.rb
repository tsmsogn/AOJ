max = 50_000

primes = (2..Math.sqrt(max).ceil).inject([*2..max]) do |nums, sieve|
  nums.reject { |num| num % sieve == 0 && num != sieve }
end

hash = primes.inject(Hash.new(false)) do |hash, value|
  hash[value] = true
  hash
end

while line = gets
  n = line.chomp.to_i
  break if n == 0

  answer = 0

  if n.even?
    for i in 2..(n / 2)
      j = n - i
      answer += 1 if hash[i] && hash[j]
    end
  end

  puts answer
end
