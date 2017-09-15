module Opposite
	def opposite
		!self
	end
end

true.extend Opposite
false.extend Opposite

p "true.opposite --> #{true.opposite}"
p "false.opposite --> #{false.opposite}"
