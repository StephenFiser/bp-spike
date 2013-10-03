require 'spec_helper'

describe Property do
	describe "#how_similar" do
		it "should calculate similarity" do
			house1 = Property.create
			house2 = Property.create
			windows = Detail.create(title: "Windows")
			doors = Detail.create(title: "Doors")
			swimming_pool = Detail.create(title: "Swimming Pool")

			house1.details << windows
			house1.details << doors

			house2.details << windows
			house2.details << doors
			house2.details << swimming_pool

			house1.how_similar(house2).should eq(2/3.0) 
		end
	end
end
