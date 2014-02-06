class Campsite < ActiveRecord::Base
  has_many :ratings
  has_many :users, through: :ratings

  geocoded_by :location        # :location is a "City, State"; can also be an IP address
  after_validation :geocode    # auto-fetch coordinates

  #TODO: Must figure out how to ensure that the location is populated instead of city and state attributes
  #reverse_geocoded_by :latitude, :longitude                  #reverse geocode the lat/long to a location
  #after_validation :reverse_geocode  # auto-fetch address    #auto-fetch location
end
