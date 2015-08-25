# GaussJordan
module GaussJordan
  def self.calc(a)
    a.length.times do |k|
      pivot = a[k][k]
      i = k

      i.upto(a[k].length - 1) do |j|
        a[k][j] /= pivot
      end

      a.length.times do |j|
        if j != k
          d = a[j][k]
          l = k
          l.upto(a[k].length - 1) do |m|
            a[j][m] -= d * a[k][m]
          end
        end
      end
    end

    a
  end
end

while line = gets
  a, b, c, d, e, f = line.chomp.split.map(&:to_f)
  g = [[a, b, c], [d, e, f]]
  answer = GaussJordan.calc(g)
  puts sprintf('%.3f %.3f', answer[0][2] + 0.0, answer[1][2] + 0.0)
end
