class Fixnum
  def /(o)
    self.fdiv(o).to_i
  end
end

n = gets.chop.to_i

n.times do
  puts eval(gets.chop.gsub(/=$/, ''))
end
