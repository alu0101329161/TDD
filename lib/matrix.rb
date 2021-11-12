require 'pry'

class Matrix

	def initialize(x)
	  @x = x
	end
	def to_s
	  "#{@x}"
	end
	def [](x,y)
	  @x[x][y]
	end
end
