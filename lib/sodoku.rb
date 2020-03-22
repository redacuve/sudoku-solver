class Sodoku
  def initialize(sodoku)
    @sodoku = sodoku
  end

  def show
    @sodoku.each { |e| print "#{e}\n" }
  end
end
