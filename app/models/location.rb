
class Location < ActiveRecord::Base
# validate the record
  attr_accessible  :address, :latitude, :longitude
  geocoded_by      :address
  after_validation :geocode, :if => :address_changed?
end