class Wildfire < ActiveRecord::Base
	belongs_to :location
	mount_uploader :fire_pic, FirePicsUploader

	scope :active_status, -> { where(status: "Active") }

end
