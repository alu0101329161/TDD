require 'matrix'

describe Matrix do
	
	it "Se instancia un objeto matrix" do

	  expect(Matrix.new([[0,3],[0,3]])).not_to eq(nil)
	
	end

end
