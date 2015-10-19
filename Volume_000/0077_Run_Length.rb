while line = gets
  puts line.gsub(/@(\d)(.)/) { $2.to_s * $1.to_i }
end
