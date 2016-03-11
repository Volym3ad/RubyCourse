#
# fibonacci numbers
#

array = [1, 2]

40.times do |item|
  mark = array[item] + array[item + 1] 
  if mark > 4_000_000
    break
  end
  array.push(mark)
end

print array

sum = 0
array.each do |item|
  if item % 2 == 0
    sum += item
  end
end

print "\nThe sum is #{sum}"
