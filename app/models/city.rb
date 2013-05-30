# this class maps our city to the DB
# see the section called "Models" at http://guides.rubyonrails.org/

class City < ActiveRecord::Base
  # validate the record
  validates_presence_of        :name , :state , :country
  validates_numericality_of    :latitude , :longitude , :allow_nil => false
  before_validation            :fetch_coordinates
  geocoded_by                  :address
end