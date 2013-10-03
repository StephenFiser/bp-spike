require 'spec_helper'

describe Property do
	describe "#how_similar" do
		it "should calculate similarity" do
			house2 = Property.create
			current_house = Property.create
			windows = Detail.create(title: "Windows")
			doors = Detail.create(title: "Doors")
			swimming_pool = Detail.create(title: "Swimming Pool")

			house2.details << windows
			house2.details << doors

			current_house.details << windows
			current_house.details << doors
			current_house.details << swimming_pool

			house2.how_similar?(current_house).should eq(2/3.0) 
		end
	end
end
