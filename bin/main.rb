require_relative '../lib/sudoku.rb'

sudoku = [[0, 0, 2, 0, 0, 3, 6, 0, 0],
          [0, 0, 0, 0, 6, 0, 0, 0, 0],
          [1, 0, 7, 0, 5, 9, 0, 0, 0],
          [0, 8, 0, 0, 0, 0, 7, 0, 0],
          [9, 3, 0, 0, 0, 6, 0, 0, 1],
          [0, 0, 0, 0, 2, 0, 5, 0, 0],
          [8, 0, 0, 0, 0, 0, 2, 0, 0],
          [0, 0, 0, 0, 0, 4, 0, 0, 5],
          [0, 0, 0, 1, 0, 0, 0, 8, 9]]

my_sudoku = Sudoku.new(sudoku)
my_sudoku.show
my_sudoku.solve
puts ''
my_sudoku.show
