require 'matrix'

describe Matrix do
	
	it "Se instancia un objeto matrix" do

	  expect(Matrix.new([[0,3],[0,3]])).not_to eq(nil)
	
	end

	 it "Se debe poder acceder a los elementos de la matrix " do
    	   expect(Matrix.new([[0,3],[0,3]])[0,0]).to eq(0)
	   expect(Matrix.new([[0,3],[0,3]])[0,1]).to eq(3) 
  	end

	it "Se debe poder mostrar la matrix " do
          expect(Matrix.new([[0,3],[0,3]]).to_s).to eq("[[0, 3], [0, 3]]")
          expect(Matrix.new([[0,1],[0,1]]).to_s).to eq("[[0, 1], [0, 1]]")
	  expect(Matrix.new([[2,3],[2,4]]).to_s).to eq("[[2, 3], [2, 4]]")	
        end
end
