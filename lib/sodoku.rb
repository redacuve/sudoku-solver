class Sodoku
  def initialize(sodoku)
    @sodoku = sodoku
  end

  def show
    @sodoku.each { |e| print "#{e}\n" }
  end

  def posible?(y, x, n)
    return false unless @soduko[y][x].zero?

    9.times do |i|
      return false if @soduko[y][i] == n
    end

    9.times do |i|
      return false if @soduko[i][x] == n
    end

    ((3 * (y / 3))..(3 * (y / 3) + 2)).each do |yy|
      ((3 * (x / 3))..(3 * (x / 3) + 2)).each do |xx|
        return false if @soduko[yy][xx] == n
      end
    end
    true
  end
end
