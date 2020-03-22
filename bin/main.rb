require_relative '../lib/sodoku.rb'

sodoku = [[0, 5, 2, 0, 0, 6, 0, 0, 9],
          [1, 6, 0, 9, 0, 0, 0, 0, 4],
          [0, 4, 9, 8, 0, 3, 6, 2, 5],
          [4, 0, 0, 0, 0, 0, 8, 0, 0],
          [0, 8, 3, 2, 0, 1, 5, 9, 0],
          [0, 0, 1, 0, 0, 0, 0, 0, 2],
          [0, 9, 7, 3, 0, 5, 2, 4, 0],
          [2, 0, 0, 0, 0, 9, 0, 5, 6],
          [0, 0, 0, 1, 0, 0, 9, 7, 0]]

my_sodoku = Sodoku.new(sodoku)
my_sodoku.show
my_sodoku.solve
puts ""
my_sodoku.show