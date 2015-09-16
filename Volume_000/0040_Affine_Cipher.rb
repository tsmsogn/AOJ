def decrypt(str, a, b)
  table = ('a'..'z').to_a
  stack = []
  for i in 0...str.size
    s = str[i]
    if s =~ /[a-z]/
      n = (a * table.index(s) + b) % 26
      stack << table[n]
    else
      stack << s
    end
  end
  stack.join
end

n = gets.chomp.to_i

n.times do
  encrypted = gets.chomp
  a = 1
  found = false
  until found
    if a.gcd(26) == 1
      for b in 0..25
        decrypted = decrypt(encrypted, a, b)
        if decrypted =~ /\b(this|that)\b/
          found = true
          break
        end
      end
    end
    a += 1
  end

  puts decrypted
end
