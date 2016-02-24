def fizzbuzz(n)
  if n % 5 == 0 && n % 3 == 0
    'FizzBuzz'
  elsif n % 5 == 0
    'Buzz'
  elsif n % 3 == 0
    'Fizz'
  else
    n.to_s
  end
end

# puts (1..100).map { |i| fizzbuzz(i) }

while line = gets
  m, n = line.chomp.split.map(&:to_i)
  break if m == 0 && n == 0

  a = [*1..m]
  i = 0

  for c in 1..n
    break unless a.size > 1

    s = gets.chomp

    unless s == fizzbuzz(c)
      a.delete_at(i)
    else
      i = i + 1
    end

    i %= a.size
  end

  puts a.join(' ')
end
