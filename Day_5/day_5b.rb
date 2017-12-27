require "pry"
offsets = File.read("day_5_input.txt").chomp.split
offsets.map! {|offset| offset.to_i}
index = 0
jump_count = 0

def jump(offsets, index)
  jump = offsets[index]
  if jump >= 3
    offsets[index] -= 1
  else
    offsets[index] += 1
  end
  index += jump
  return {offsets: offsets, index: index}
end

while (index < offsets.count)
  post_jump = jump(offsets, index)
  offsets = post_jump[:offsets]
  index = post_jump[:index]
  jump_count += 1
end

puts "#{jump_count} jumps"
