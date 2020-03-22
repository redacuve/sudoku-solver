class Sodoku
  def initialize(sodoku)
    @sodoku = sodoku
  end

  def show
    @soduko.each { |e| print "#{e}\n" }
  end
end
