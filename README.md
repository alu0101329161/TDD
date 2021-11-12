# Práctica 6. Desarrollo Dirigido por Pruebas - TDD

- [x] 1. Intalar la gema Rspec (gem install rspec)

- [x] 2. Ejecutar rspec --init (se crean el fichero .rspec, el directorio spec/ y el fichero spec/spec\_helper.rb)

- [x] 3. Primera prueba

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
        '
        Command failed with status (1): [rspec spec/matrix_spec.rb --format doc...]
        /home/usuario/LPP/tdd/Rakefile:10:in `block in <top (required)>'
        /home/usuario/.rvm/gems/ruby-2.7.2/gems/rake-13.0.6/exe/rake:27:in `<top (required)>'
        /home/usuario/.rvm/gems/ruby-2.7.2/bin/ruby_executable_hooks:22:in `eval'
        /home/usuario/.rvm/gems/ruby-2.7.2/bin/ruby_executable_hooks:22:in `<main>'
        Tasks: TOP => doc
        (See full trace by running task with --trace)
        '


- [X] 4. Se arregla el fallo que produce la primera prueba

	rspec spec/matrix_spec.rb
	No examples found.


	Finished in 0.00052 seconds (files took 0.15405 seconds to load)
	0 examples, 0 failures


- [X] 5. Segunda prueba
	
	rspec spec/matrix_spec.rb

	An error occurred while loading ./spec/matrix_spec.rb.
	Failure/Error:
  	describe Matrix do
  	end

	NameError:
	uninitialized constant Matrix
	# ./spec/matrix_spec.rb:3:in `<top (required)>'
	No examples found.


	Finished in 0.00003 seconds (files took 0.19468 seconds to load)
	0 examples, 0 failures, 1 error occurred outside of examples

	rake aborted!
	Command failed with status (1): [rspec spec/matrix_spec.rb...]
	/home/usuario/LPP/tdd/Rakefile:5:in `block in <top (required)>'
	/home/usuario/.rvm/gems/ruby-2.7.2/gems/rake-13.0.6/exe/rake:27:in `<top (required)>'
	/home/usuario/.rvm/gems/ruby-2.7.2/bin/ruby_executable_hooks:22:in `eval'
	/home/usuario/.rvm/gems/ruby-2.7.2/bin/ruby_executable_hooks:22:in `<main>'
	Tasks: TOP => default => noformat
	(See full trace by running task with --trace)

		





## Autor
* [Joseph Gabino Rodríguez](https://github.com/alu0101329161)
