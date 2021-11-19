
<<<<<<< HEAD
- [x] 1. Intalar la gema Rspec (gem install rspec)

- [x] 2. Ejecutar rspec --init (se crean el fichero .rspec, el directorio spec/ y el fichero spec/spec\_helper.rb)

- [x] 3. Primera prueba
	/# En spec/matrix_spec.rb
	require 'matriz'

        An error occurred while loading ./spec/matrix_spec.rb. - Did you mean?
                    rspec ./spec/spec_helper.rb

        Failure/Error: require 'matrix'

        LoadError:
        cannot load such file -- matrix
        # ./spec/matrix_spec.rb:1:in `<top (required)>'
        No examples found.

        Finished in 0.00004 seconds (files took 0.20527 seconds to load)
        0 examples, 0 failures, 1 error occurred outside of examples

        rake aborted!


- [X] 4. Se arregla el fallo que produce la primera prueba
	/# En /lib
	nano matrix.rb

	rspec spec/matrix_spec.rb
	No examples found.


	Finished in 0.00052 seconds (files took 0.15405 seconds to load)
	0 examples, 0 failures


- [X] 5. Segunda prueba
	/# En spec/matriz.rb
	
	rspec spec/matrix_spec.rb

	An error occurred while loading ./spec/matrix_spec.rb.
	Failure/Error:
	'''
        describe Matrix do
        end
	'
	NameError:
	uninitialized constant Matrix
	# ./spec/matrix_spec.rb:3:in `<top (required)>'
	No examples found.


	Finished in 0.00003 seconds (files took 0.19468 seconds to load)
	0 examples, 0 failures, 1 error occurred outside of examples

	rake aborted!


- [X] 6. Se arregla fallo que produce la segunda prueba

	/# En lib/matrix.rb

	class Matrix
	end

	rspec spec/matrix_spec.rb
	No examples found.


	Finished in 0.00036 seconds (files took 0.15038 seconds to load)
	0 examples, 0 failures


- [X] 7. Tercera prueba

	/# En spec/matrix_spec.rb
	it "Intanciar objeto matriz" do
	  expect(Matrix.new([0,3],[0,3])).not_to_eq(nil) 
	end

	rspec spec/matrix_spec.rb
        F

        Failures:

        1) Matrix Se instancia un objeto matrix
        Failure/Error: expect(Matrix.new([0,3],[0,3])).not_to_eq(nil)
     
        ArgumentError:
        wrong number of arguments (given 2, expected 0)
        # ./spec/matrix_spec.rb:7:in `initialize'
        # ./spec/matrix_spec.rb:7:in `new'
        # ./spec/matrix_spec.rb:7:in `block (2 levels) in <top (required)>'

	Finished in 0.00467 seconds (files took 0.13897 seconds to load)
	1 example, 1 failure

	Failed examples:

	rspec ./spec/matrix_spec.rb:5 # Matrix Se instancia un objeto matrix


- [X] 8. Se arreglo fallo que produce tercera prueba

	/# En lib/matrix.rb
	def initialize(x)
	  @x = x
	end

	rspec spec/matrix_spec.rb
	.

	Finished in 0.00533 seconds (files took 0.14242 seconds to load)
	1 example, 0 failures



- [X] 9. Cuarta prueba

	En /# spec/matrix_spec.rb
	it "Se debe poder acceder a los elementos de la matrix"
	  expect(Matrix.new([[0,3],[0,3]])[0,0]).to eq(0)
	  expect(Matrix.new([[0,3],[0,3]])[0,1]).to eq(3)
	end

        .F

        Failures:

        1) Matrix Se debe poder acceder a los elementos de la matrix 
        Failure/Error: expect(Matrix.new([[0,3],[0,3]])[0,0]).to eq(0)
     
        NoMethodError:
        undefined method `[]' for #<Matrix:0x0000564d1b1d1118 @x=[[0, 3], [0, 3]]>
        # ./spec/matrix_spec.rb:12:in `block (2 levels) in <top (required)>'

	Finished in 0.00598 seconds (files took 0.15262 seconds to load)
	2 examples, 1 failure

	Failed examples:

	rspec ./spec/matrix_spec.rb:11 # Matrix Se debe poder acceder a los elementos de la matrix 


- [X] 10. Se arreglo fallo que produce cuarta prueba

	/# En lib/matrix.rb
	def [](x,y)
	  @x[x][y]
	end

	rspec spec/matrix_spec.rb
	..

	Finished in 0.00591 seconds (files took 0.15419 seconds to load)
	2 examples, 0 failures


- [X] 11. Quinta prueba
	
	/# En spec/matrix_spec.rb
	it"Imprimir matrix"
	  expect(Matrix.new([[0,3],[0,3]]).to_s).to eq("[[0,3][0,3]]")
	  expect(Matrix.new([[0,1],[0,1]]).to_s).to eq("[[0,1][0,1]]")
	  expect(Matrix.new([[2,3],[2,3]]).to_s).to eq("[[2,3][2,3]]")
	end
		
	rspec spec/matrix_spec.rb
	..F
	Failures:

       1) Matrix Se debe poder mostrar la matrix 
       Failure/Error: expect(Matrix.new([[0,3],[0,3]]).to_s).to eq("[[0,3][0,3]]")
     
       expected: "[[0,3][0,3]]"
            got: "#<Matrix:0x000055e1a347a560>"
     
       (compared using ==)
       # ./spec/matrix_spec.rb:17:in `block (2 levels) in <top (required)>'

	Finished in 0.01874 seconds (files took 0.37826 seconds to load)
	3 examples, 1 failure

	Failed examples:

	rspec ./spec/matrix_spec.rb:16 # Matrix Se debe poder mostrar la matrix 


- [X] 12. Se arreglo fallo que produce quinta prueba
	
	/# En /lib/matrix.txt
	def to_s
	  "#{@x]"
	end

	rspec spec/matrix_spec.rb
	...

	Finished in 0.00552 seconds (files took 0.37585 seconds to load)
	3 examples, 0 failures


- [X] 13. Sexta prueba
	
	/# En /spec/matrix_spec.rb
	it "Se espera que se puedan sumar dos matrices"
	  expect(Matrix.new([[0,3],[0,3]]) + Matrix.new([[0,1],[0,1]]).to_s).to eq("[[0, 4], [0, 4]]")
	  expect(Matrix.new([[1,1],[1,1]]) + Matrix.new([[1,1],[1,1]]).to_s).to eq("[[2, 2], [2, 2]]")
	  expect(Matrix.new([[2,2],[2,2]]) + Matrix.new([[2,2],[2,2]]).to_s).to eq("[[4, 4], [4, 4]]")
	end

	rspec spec/matrix_spec.rb
	...F

	Failures:

       1) Matrix Se debe poder sumar matrices 
       Failure/Error: expect(Matrix.new([[0,3],[0,3]]) + Matrix.new([[0,1],[0,1]]).to_s).to eq("[[0, 4], [0, 4]]")
     
       NoMethodError:
       undefined method `+' for #<Matrix:0x000056040fd87bd8 @x=[[0, 3], [0, 3]]>
       # ./spec/matrix_spec.rb:23:in `block (2 levels) in <top (required)>'

	Finished in 0.00573 seconds (files took 0.4 seconds to load)
	4 examples, 1 failure

	Failed examples:

	rspec ./spec/matrix_spec.rb:22 # Matrix Se debe poder sumar matrices 

	rake aborted!

- [X] 14. Se arreglo fallo que produce sexta prueba
	/# En /lib/matrix.rb se implementa metodo suma

	rspec spec/matrix_spec.rb
	....

	Finished in 0.00628 seconds (files took 0.3903 seconds to load)
	4 examples, 0 failures


- [X] 15. Septima prueba
	/# En spec/matrix_spec.rb
	it "Se espera hacer producto por un escalar" do
	  expect((Matrix.new([[0,3],[0,3]]) * 2).to_s).to eq("[[0, 6], [0, 6]]")
	  expect((Matrix.new([[1,1],[1,1]]) * 3).to_s).to eq("[[3, 3], [3, 3]]")
	  expect((Matrix.new([[2,2],[2,2]]) * 5).to_s).to eq("[[10, 10], [10, 10]]")
	rspec spec/matrix_spec.rb
	....F

	Failures:

       1) Matrix Se debe poder hacer el producto por un producto escalar 
       Failure/Error: expect((Matrix.new([[0,3],[0,3]]) * 2).to_s).to eq("[[0, 6], [0, 6]]")
     
       NoMethodError:
       undefined method `*' for #<Matrix:0x0000563c5242f6c8 @x=[[0, 3], [0, 3]]>
       # ./spec/matrix_spec.rb:29:in `block (2 levels) in <top (required)>'

	Finished in 0.00615 seconds (files took 0.41587 seconds to load)
	5 examples, 1 failure

	Failed examples:

	rspec ./spec/matrix_spec.rb:28 # Matrix Se debe poder hacer el producto por un producto escalar 

	rake aborted!


- [X] 16. Se arreglo fallo que produce la septima prueba
	/# En /lib/matrix.rb
	Se ha implementado metodo *

	rspec spec/matrix_spec.rb
	.....

	Finished in 0.00627 seconds (files took 0.40743 seconds to load)
	5 examples, 0 failures
 

- [X] 17. Octava prueba
	/# En /spec/matrix_spec.rb
	it " Se espera poder hacer la traspuesta de una matrix" do
	  expect((Matrix.new([[0,3],[0,3]]).traspuesta).to_s).to eq("[[0, 0], [3, 3]]")
	  expect((Matrix.new([[1,1],[1,1]]).traspuesta).to_s).to eq("[[1, 1], [1, 1]]")
	  expect((Matrix.new([[5,2],[5,2]]).traspuesta).to_s).to eq("[[5, 2], [5, 2]]")
	rspec spec/matrix_spec.rb

        .....F

        Failures:

        1) Matrix Se debe poder hacer la traspuesta de una matrix 
        Failure/Error: expect((Matrix.new([[0,3],[0,3]]).traspuesta).to_s).to eq("[[0, 0], [3, 3]]")
     
        NoMethodError:
        undefined method `traspuesta' for #<Matrix:0x0000555a407394a8 @x=[[0, 3], [0, 3]]>
        # ./spec/matrix_spec.rb:35:in `block (2 levels) in <top (required)>'

	Finished in 0.00695 seconds (files took 0.41897 seconds to load)
	6 examples, 1 failure

	Failed examples:

	rspec ./spec/matrix_spec.rb:34 # Matrix Se debe poder hacer la traspuesta de una matrix 

	rake aborted!

- [x] 18. Se arreglo fallo que produce la prueba
	/# Se ha implementado en /lib/matrix.rb se ha implementado metodo traspuesta

	......

	Finished in 0.00635 seconds (files took 0.4123 seconds to load)
	6 examples, 0 failures

## Autor
* [Joseph Gabino Rodríguez](https://github.com/alu0101329161)
=======
>>>>>>> dev
