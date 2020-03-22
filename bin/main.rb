require_relative '../lib/sudoku.rb'

sudoku = [[0, 5, 2, 0, 0, 6, 0, 0, 9],
          [1, 6, 0, 9, 0, 0, 0, 0, 4],
          [0, 4, 9, 8, 0, 3, 6, 2, 5],
          [4, 0, 0, 0, 0, 0, 8, 0, 0],
          [0, 8, 3, 2, 0, 1, 5, 9, 0],
          [0, 0, 1, 0, 0, 0, 0, 0, 2],
          [0, 9, 7, 3, 0, 5, 2, 4, 0],
          [2, 0, 0, 0, 0, 9, 0, 5, 6],
          [0, 0, 0, 1, 0, 0, 9, 7, 0]]
my_sudoku = Sudoku.new(sudoku)
my_sudoku.show
my_sudoku.solve
puts ''
my_sudoku.show
