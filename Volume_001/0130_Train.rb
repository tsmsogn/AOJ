n = gets.chomp.to_i

n.times do
  stack = gets.chomp.split(/(<\-|\->)/)
  answer = []
  cursor = 0

  stack.each do |str|
    if str !~ /<-|->/
      unless answer.index(str)
        answer.insert(cursor, str)
      end
    else
      if str =~ /->/
        cursor += 1
      else
        cursor -= 1
      end

      cursor = 0 if cursor < 0
    end
  end

  puts answer.join
end
