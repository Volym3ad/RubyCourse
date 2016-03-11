#
# 3-digit polindrom 
#

max = 0

999.downto(100) do |i|
  i.downto(100) do |j|
    result = i * j
    if result > max && result.to_s == result.to_s.reverse
      max = result
    elsif result <= max
      break
    end
  end
end

puts max