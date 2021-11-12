require 'pry'

class Matrix

	def initialize(x = [])
	  @x = x
	end
	def +(b)
    	  aux = Matrix.new
          limitex = @x.length

            for x in 0...limitex do
             limitey = @x[x].length
             aux_array = []

              for y in 0...limitey
               aux_array.push(@x[x][y] + b[x, y])
              end

              aux.push(aux_array)
            end

          aux
  	end
	def push(x)
	  @x.push(x)
	end
	def to_s
	  "#{@x}"
	end
	def [](x,y)
	  @x[x][y]
	end
end


