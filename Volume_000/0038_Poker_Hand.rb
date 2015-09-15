def four_card?(a)
  mode_value = a.max_by { |x| a.count(x) }
  a.count(mode_value) == 4
end

def full_house?(a)
  !four_card?(a) && a.uniq.size == 2
end

def straight?(a)
  a = a.uniq.sort
  return false if a.size < 5
  a.last - a.first == 4 || a[0] == 1 && a[1] == 10 && a[2] == 11 && a[3] == 12 && a[4] == 13
end

def three_card?(a)
  mode_value = a.max_by { |x| a.count(x) }
  a.count(mode_value) == 3
end

def two_pair?(a)
  !three_card?(a) && a.uniq.size == 3
end

def one_pair?(a)
  a.uniq.size == 4
end

while line = gets
  cards = line.chomp.split(',').map(&:to_i)
  if four_card?(cards)
    puts 'four card'
  elsif full_house?(cards)
    puts 'full house'
  elsif straight?(cards)
    puts 'straight'
  elsif three_card?(cards)
    puts 'three card'
  elsif two_pair?(cards)
    puts 'two pair'
  elsif one_pair?(cards)
    puts 'one pair'
  else
    puts 'null'
  end
end
