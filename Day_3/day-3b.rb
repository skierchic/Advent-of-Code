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

def make_loop(spiral, x, y, input)
  #follow spiral path and evalute the location along the way
  #break out when a number is greater than the input value?
  # loop do
  #   x += 1
  #   spiral[x][y] = evaluate_location_value(spiral, x, y)
  #   break if spiral[x][y + 1] == 0
  # end

end

#evaluate the value of the given location in the given spiral by adding the values for all neighbors and return
def evaluate_location_value(spiral, x, y)
  sum = 0
  if y - 1 >= 0
    sum += spiral[x][y-1]
  end
  if y + 1 < spiral.length
    sum += spiral[x][y+1]
  end

  if x - 1 >= 0
    sum += spiral[x-1][y]
    if y - 1 >= 0
      sum += spiral[x-1][y-1]
    end
    if y + 1 < spiral.length
      sum += spiral[x-1][y+1]
    end
  end

  if x + 1 < spiral.length
    sum += spiral[x+1][y]
    if y - 1 >= 0
      sum += spiral[x+1][y-1]
    end
    if y + 1 < spiral.length
      sum += spiral[x+1][y+1]
    end
  end
  return sum
end

spiral = make_spiral(25)
binding.pry
