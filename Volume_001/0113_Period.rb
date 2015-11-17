while line = gets
  p, q = line.chomp.split.map(&:to_i)

  n = nil
  mods = []
  nums = []

  until p == 0
    p = p * 10
    break if n = mods.index(p)
    mods << p
    nums << p / q
    p = p % q
  end

  puts nums.join
  unless n == nil
    stack = []
    stack.fill(' ', 0...n)
    stack.fill('^', n...nums.size)
    puts stack.join
  end
end
