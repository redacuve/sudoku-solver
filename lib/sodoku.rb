class Sodoku
  def initialize(sodoku)
    @sodoku = sodoku
  end

  def show
    @sodoku.each { |e| print "#{e}\n" }
  end

  def solve
    9.times do |y|
      9.times do |x|
        next unless @sodoku[y][x].zero?

        (1..9).each do |n|
          next unless posible?(y, x, n)

          @sodoku[y][x] = n
          solve
          if solved?
            break
          else
            @sodoku[y][x] = 0
          end
        end
        return
      end
    end
  end

  def posible?(y, x, n)
    return false unless @sodoku[y][x].zero?

    9.times do |i|
      return false if @sodoku[y][i] == n
    end

    9.times do |i|
      return false if @sodoku[i][x] == n
    end

    ((3 * (y / 3))..(3 * (y / 3) + 2)).each do |yy|
      ((3 * (x / 3))..(3 * (x / 3) + 2)).each do |xx|
        return false if @sodoku[yy][xx] == n
      end
    end
    true
  end

  def solved?
    (0...9).each do |y|
      (0...9).each do |x|
        return false if @sodoku[y][x].zero?
      end
    end
    true
  end
end
