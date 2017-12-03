captcha = File.read("day_1_input.txt").chomp
puts captcha
last_digit = captcha[-1]
puts "last digit is #{last_digit}"
sum = 0
captcha.split('').each do |digit|
  if digit == last_digit
    sum += digit.to_i
  end
  last_digit = digit
end

puts ("captcha total is #{sum}")
