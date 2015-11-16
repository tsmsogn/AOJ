def hamming_numbers(max)
  nums = Array.new(max + 1, 0)
  nums[1] = 1

  (2..max).each do |num|
    nums[num] = 1 if num % 2 == 0 && nums[num / 2] == 1
    nums[num] = 1 if num % 3 == 0 && nums[num / 3] == 1
    nums[num] = 1 if num % 5 == 0 && nums[num / 5] == 1
  end

  (1..max).select { |num| nums[num] == 1 }
end

nums = hamming_numbers(1_000_000)

while line = gets
  break if line.chomp == '0'
  m, n = line.chomp.split.map(&:to_i)
  puts nums.take_while { |num| num <= n }.size - nums.take_while { |num| num < m }.size
end
