def is_a?(s)
  s =~ /^>'(=+)#(=+)~$/
  unless $1 == nil || $2 == nil
    return s && $1.size == $2.size
  end
  false
end

def is_b?(s)
  s =~ /^>\^(Q=)+~~$/
end

n = gets.chomp.to_i

n.times do
  s = gets.chomp
  if is_a?(s)
    puts :A
  elsif is_b?(s)
    puts :B
  else
    puts :NA
  end
end
