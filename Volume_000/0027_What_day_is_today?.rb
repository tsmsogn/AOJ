require 'date'

day_of_the_week = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

while line = gets
 month, day = line.chomp.split.map(&:to_i)
 break if month == 0
 puts day_of_the_week[Date.new(2004, month, day).wday]
end
