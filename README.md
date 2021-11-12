# Práctica 6. Desarrollo Dirigido por Pruebas - TDD

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


## Autor
* [Joseph Gabino Rodríguez](https://github.com/alu0101329161)
