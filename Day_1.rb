puts "enter captcha"
captcha = gets.chomp
last_digit = captcha[-1]
sum = 0
captcha.split('').each do |digit|
  if digit == last_digit
    sum += digit.to_i
  end
  last_digit = digit
end

puts ("captcha total is #{sum}")
