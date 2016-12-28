class Shelter < ApplicationRecord
	validates_presence_of :name, :address, :phone, :beds
	has_one :location
	geocoded_by :address
	after_validation :geocode
end
