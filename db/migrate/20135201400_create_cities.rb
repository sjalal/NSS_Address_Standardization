class CreateCities < ActiveRecord::Migration
  def change
    create_table  :cities do |t|
        t.string  :name
        t.string  :state
        t.string  :country
        t.numeric :latitude
        t.numeric :longitude
    end
  end
end