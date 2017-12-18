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

def make_loop(spiral, x, y)
  #follow spiral path and evalute the location along the way
  #break out when a number is greater than the input value?
  # loop do
  #   x += 1
  #   spiral[x][y] = evaluate_location_value(spiral, x, y)
  #   break if spiral[x][y + 1] == 0
  # end

end

def evaluate_location_value(spiral, x, y)
  #evaluate the value of the given location in the given spiral by adding
  #the values for all neighbors and return
end

make_spiral(25)
