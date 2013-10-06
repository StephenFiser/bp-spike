class API::V1::PropertiesController < ApplicationController
	respond_to :json

	def index
		respond_with Property.all
	end

	def show
		respond_with Property.find(params[:id])
	end

	def create 
		property = Property.create(property_params)
		respond_with :api, :v1, property
	end

	def update
		property = Property.find(params[:id])
		property.update(property_params)
		respond_with :api, :v1, property
	end

	def destroy
		respond_with Property.destroy(params[:id])
	end


	private 

	def property_params
		params.require(:property).permit(:title)
	end
end
