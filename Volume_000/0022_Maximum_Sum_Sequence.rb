# Kadane
module Kadane
  def self.max_subarray(a)
    max_so_far = max_ending_here = -1.0 / 0
    a.each do |i|
      max_ending_here = [i, max_ending_here + i].max
      max_so_far = [max_so_far, max_ending_here].max
    end
    max_so_far
  end
end

while n = gets.chomp.to_i
  break if n == 0
  a = []
  n.times { a << gets.chomp.to_i }
  puts Kadane.max_subarray(a)
end
