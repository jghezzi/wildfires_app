class Location < ActiveRecord::Base
	has_many :wildfires

	def self.search(query)
  	where("state like ?", "%#{query}%")
	end

	# def self.joiner
	# 	Location.joins(:wildfires)
	# end

end
