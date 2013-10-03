class Property < ActiveRecord::Base
	belongs_to :user
	has_one :location
	has_many :details

	def how_similar property
		matches = 0
		self.details.each do |detail|
			if property.details.include?(detail)
				matches += 1
			end
		end
		matches / property.details.length.to_f
	end
end
