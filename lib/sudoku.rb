class Sudoku
  def initialize(sudoku)
    @sudoku = sudoku
  end

  def show
    @sudoku.each { |e| print "#{e}\n" }
  end

  def solve
    9.times do |y|
      9.times do |x|
        next unless @sudoku[y][x].zero?

        (1..9).each do |n|
          next unless posible?(y, x, n)

          @sudoku[y][x] = n
          solve
          break if solved?

          @sudoku[y][x] = 0
        end
        return
      end
    end
  end

  private

  def posible?(y, x, n)
    return false unless @sudoku[y][x].zero?

    9.times do |i|
      return false if @sudoku[y][i] == n
    end

    9.times do |i|
      return false if @sudoku[i][x] == n
    end

    ((3 * (y / 3))..(3 * (y / 3) + 2)).each do |yy|
      ((3 * (x / 3))..(3 * (x / 3) + 2)).each do |xx|
        return false if @sudoku[yy][xx] == n
      end
    end
    true
  end

  def solved?
    (0...9).each do |y|
      (0...9).each do |x|
        return false if @sudoku[y][x].zero?
      end
    end
    true
  end
end
