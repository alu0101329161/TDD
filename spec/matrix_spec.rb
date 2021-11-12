require 'matrix'

describe Matrix do
	
	it "Se instancia un objeto matrix" do

	  expect(Matrix.new([[0,3],[0,3]])).not_to eq(nil)
	
	end

	 it "Se debe poder acceder a los elementos de la matrix " do
    	   expect(Matrix.new([[0,3],[0,3]])[0,0]).to eq(0)
	   expect(Matrix.new([[0,3],[0,3]])[0,1]).to eq(3) 
  	end

end
