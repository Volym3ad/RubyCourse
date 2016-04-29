class Car
	def accelerate!
		@moving = true
	end
	def stop!
		@moving = false
	end
	def moving?
		@moving
	end
end

car = Car.new
car.accelerate!
puts car.moving?
car.stop!
puts car.moving?

puts car.inspect