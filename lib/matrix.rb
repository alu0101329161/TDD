require 'pry'

class Matrix
	# Constructor de la clase
	def initialize(x = [])
	 raise TypeError, "Se espera como argumento un array: Array" unless x.is_a?Array
	  @x = x
	end
        # Metodo suma de matrices
	def +(b)
	 raise TypeError, "Se espera como argumento una matrix: Matrix" unless b.is_a?Matrix
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
	 raise TypeError, "Se espera como argumento un array: Array" unless x.is_a?Array
	  @x.push(x)
	end
	# Metodo que multiplica por un escalar
	def *(b)
	 raise TypeError, "Se espera como argumento una integer: Integer" unless b.is_a?Integer
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
	# Metodo que hace la traspuesta
	def traspuesta
	  c = Matrix.new
          row = @x.length

            for x in 0...row do
             col = @x[x].length
             new_vector = []

              for y in 0...col
		new_vector.push(@x[y][x])
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


