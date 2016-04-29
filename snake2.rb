class Snake
	@@count = 0

	def initialize
		@@count += 1
	end

	def all_snakkes
		@@count
	end
end


puts Snake.new.all_snakkes
puts Snake.new.all_snakkes
puts Snake.new.all_snakkes
puts Snake.new.all_snakkes