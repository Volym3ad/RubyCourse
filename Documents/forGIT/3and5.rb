# 
# multiplies of 3 and 5
#

puts "Enter the value:"
value = gets.chomp

value = value.to_i

sum = 0
(1...value).each do |item|
  if item % 5 == 0 || item % 3 == 0
    puts item
    sum += item
  end 
end 

puts "The sum is #{sum}"
