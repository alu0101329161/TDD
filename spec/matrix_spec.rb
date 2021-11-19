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

	it "Se debe poder sumar matrices " do
          expect((Matrix.new([[0,3],[0,3]]) + Matrix.new([[0,1],[0,1]])).to_s).to eq("[[0, 4], [0, 4]]")
	  expect((Matrix.new([[1,1],[1,1]]) + Matrix.new([[1,1],[1,1]])).to_s).to eq("[[2, 2], [2, 2]]")
	  expect((Matrix.new([[2,2],[2,2]]) + Matrix.new([[2,2],[2,2]])).to_s).to eq("[[4, 4], [4, 4]]")
        end

	 it "Se debe poder hacer el producto por un producto escalar " do
          expect((Matrix.new([[0,3],[0,3]]) * 2).to_s).to eq("[[0, 6], [0, 6]]")
          expect((Matrix.new([[1,1],[1,1]]) * 3).to_s).to eq("[[3, 3], [3, 3]]")
	  expect((Matrix.new([[2,2],[2,2]]) * 5).to_s).to eq("[[10, 10], [10, 10]]")
        end

	 it "Se debe poder hacer la traspuesta de una matrix " do
          expect((Matrix.new([[0,3],[0,3]]).traspuesta).to_s).to eq("[[0, 0], [3, 3]]")
          expect((Matrix.new([[7,5],[2,9]]).traspuesta).to_s).to eq("[[7, 2], [5, 9]]")
          expect((Matrix.new([[2,5],[5,2]]).traspuesta).to_s).to eq("[[2, 5], [5, 2]]")
        end


end
