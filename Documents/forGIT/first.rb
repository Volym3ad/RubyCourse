#
# program madde for training...
#

puts "Enter start data - "

puts "\t a1: "
a1 = gets.chomp
puts "\t a2: "
a2 = gets.chomp

a11 = a1.to_i
a22 = a2.to_i

if a11 > 0 && a22 > 0
  puts "You enter right data."
  puts "Calculating begins..."
else
  puts "You enter wrong data."
  exit
end

count = 0
while a11 > 0 && a22 > 0
  
  if a11 == 1
    a11 += 1
    a22 -= 2
  elsif a22 == 1 || (a11 == 1 && a22 == 1)
    a22 += 1
    a11 -= 2
  end
  
  count += 1
end

puts "The total play time is #{count}"

