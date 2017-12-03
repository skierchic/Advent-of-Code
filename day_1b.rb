captcha = File.read("day_1_input.txt").chomp
puts captcha
captcha_middle = captcha.length/2
first_half_captcha = captcha[0..captcha_middle - 1]
second_half_captcha = captcha[captcha_middle..-1]
sum = 0
first_half_captcha.split('').each_with_index do |digit, index|
  if digit == second_half_captcha[index]
    sum += digit.to_i * 2
  end
end

puts ("captcha total is #{sum}")
