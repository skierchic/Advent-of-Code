#in a square loop the bottom right corner is the square of an odd number and one place to the right of the top left corner is the square of an even number
#Find the square loop that the number is part of by taking the squre root and rounding up

def spiral_distance(input)
  puts input
  grid_size = (input ** 0.5).ceil.to_i
  # puts "grid size: #{grid_size}"
  #Find the location of the access port
  access_port = grid_size / 2 + 1
  # puts "access port in column #{access_port}"

  #Find the location of the input within the loop
  corner = grid_size ** 2 - grid_size + 1
  distance_1 = access_port - 1
  distance_2 = (((input - corner).abs + 1) - access_port).abs
  total_distance = distance_1 + distance_2
  puts "Manhattan Distance is: #{total_distance}"
end

spiral_distance(1)
spiral_distance(12)
spiral_distance(23)
spiral_distance(1024)
spiral_distance(265149)
