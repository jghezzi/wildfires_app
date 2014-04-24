class WildfiresController < ApplicationController
	
	def index
		@wildfires = Wildfire.all
	end

	def new
		@new_wildfire = Wildfire.new
	end

	def active_fires
		@wildfires = Wildfire.active_status
	end

	def create
		@new_wildfire = Wildfire.new(wildfire_params)
			if @new_wildfire.save
				redirect_to wildfires_path
			else
				render new_wildfire_path
			end
	end

	def show
		@wildfire = Wildfire.find(params[:id])
	end

	def download_fire_pic
		@wildfire = Wildfire.find(params[:id])
		file = @wildfire.fire_pic
		send_file file.path
	end

private

	def wildfire_params
		params.require(:wildfire).permit!
	end

end
