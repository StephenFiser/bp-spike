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
		respond_with Property.update(params[:id], params[:property])
	end

	def destroy
		respond_with Property.destroy(params[:id])
	end


	private 

	def property_params
		params.require(:property).permit(:title)
	end
end
