a = (1..100).to_a

module Sizeble
	def big?
		self.length > 5
	end
end

a.extends(Sizeble)