class WildfiresController < ApplicationController
	
	def index
		@wildfires = Wildfire.all
	end

	def new
		@new_wildfire = Wildfire.new
	end

	def create
		@new_wildfire = Wildfire.new(wildfire_params)
			if @new_wildfire.save
				redirect_to wildfires_path
			else
				redirect_to new_wildfire_path
			end
	end


private

	def wildfire_params
		params.require(:wildfire).permit!
	end


end
