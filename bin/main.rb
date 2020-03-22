require_relative '../lib/sudoku.rb'
require 'csv'

sudoku = CSV.read('lib/sudoku.csv').each { |line| line.map!(&:to_i) }
my_sudoku = Sudoku.new(sudoku)
my_sudoku.show
my_sudoku.solve
puts "\nResult:\n\n"
my_sudoku.show
