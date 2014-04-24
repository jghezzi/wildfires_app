class Location < ActiveRecord::Base
	has_many :wildfires

	Wildfire.joins(:location)

	def self.search(state_query, county_query)
  	where("state like ? AND county like ?", "%#{state_query}%", "%#{county_query}%")

	end


	# def self.joiner
	# 	Location.joins(:wildfires)
	# end

end
