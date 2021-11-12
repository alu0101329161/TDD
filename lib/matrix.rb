require 'pry'

class Matrix
	# Constructor de la clase
	def initialize(x = [])
	  @x = x
	end
        # Metodo suma de matrices
	def +(b)
    	  c = Matrix.new
          row = @x.length

            for x in 0...row do
             col = @x[x].length
             new_vector = []

              for y in 0...col
               new_vector.push(@x[x][y] + b[x, y])
              end

              c.push(new_vector)
            end

          c
  	end
	# Metodo que introduce elemento
	def push(x)
	  @x.push(x)
	end
	# Metodo que multiplica por un escalar
	def *(b)
	  c = Matrix.new
          row = @x.length

            for x in 0...row do
             col = @x[x].length
             new_vector = []

              for y in 0...col    
               new_vector.push(@x[x][y] * b)
              end

              c.push(new_vector)
            end

          c
        end
	# Impirmir 
	def to_s
	  "#{@x}"
	end
	# Acceder a elemento de la matrix
	def [](x,y)
	  @x[x][y]
	end
end


