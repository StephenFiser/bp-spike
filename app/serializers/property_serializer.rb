class PropertySerializer < ActiveModel::Serializer
  attributes :id, :title, :property_type, :title, :description, :bedrooms, :bathrooms, :square_feet,
  				:price, :status, :year_constructed, :days_since_listed, :user_id, :created_at, 
  				:updated_at, :show, :ml, :details
  has_one :location
  has_one :user
end
