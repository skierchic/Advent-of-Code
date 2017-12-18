require 'Matrix'
require 'pry'

def make_spiral(input)
  puts input
  grid_size = (input ** 0.5).ceil.to_i
  spiral = Array.new(grid_size) {Array.new(grid_size, 0)}
  center = grid_size / 2
  spiral[center][center] = 1
  return [spiral, center, center]
end



make_spiral(25)
