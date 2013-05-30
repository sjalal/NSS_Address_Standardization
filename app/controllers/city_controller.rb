    require 'open-uri'
    require 'net/http'
    require 'rubygems'
    require 'hpricot'
    require 'active_record'
    require 'geocoder'

module CityController

class City

    def lat_lon
      [latitude , longitude]
    end
  
  # hack their method a little so that I can just pass a city in if I like
    def distance_to(*params)
        return super unless params.size > 0 && params.first.kind_of?(City)
        other_city = params.shift
        params.unshift other_city.longitude
        params.unshift other_city.latitude
        super
      end
    end
 
 
# there is a bunch of data at the end of the file that I just got w/ a quick google search for cities
# It saves all but a few of them, because their top query result is their Google Map location which is predictably formatted, and locatable
# this function queries google for the information, and then parses the result to find the city and state
# it then saves that record into the db, and outputs whether it succeeded or not
    def populate
      DATA.each do |city_details|
        begin
          address = URI.escape "http://www.google.com/search?q=#{city_details}" # escape the query so things like spaces don't mess it up
          result = Hpricot(open address) # open the page and parse it
          name , state = ( result % "#res div ol li.g h3.r a.l b" ).innerHTML.split(', ') # find the element on the page that has the name and state
          city = City.new :name => name , :state => state , :country => 'US'
          if city.save
            puts "Successfully created #{"%20s" % city.name} , #{city.state} , #{city.country} , (#{"%8.2f" % city.latitude},#{"%8.2f" % city.longitude})"
          else
            puts "#{city.inspect} failed to save from #{city_details}"
          end
        rescue
          puts "Could not generate a city from #{city_details}"
        end
      end
    # end
     # call the above function
     populate
 
    # show some interesting ways to use it
    def show_use_cases
      # distance between two cities (I had to override their method to get it to do this)
      dallas = City.find_by_name 'Dallas'
      austin = City.find_by_name 'Austin'
      puts "It is #{dallas.distance_to austin} miles from Austin to Dallas (as the crow flies)."
      
      texas_cities = City.find_all_by_state('TX').map { |city| city.lat_lon }
      puts "The geographic center of the cities in Texas (that are in our db) is #{Geocoder.geographic_center texas_cities}"
      
      cities_near_sacramento  =  City.find_by_name('Sacramento').nearbys(100).map(&:name).join(', ')
      puts 'Cities within 100 miles of Sacramento: ' + cities_near_sacramento
      puts 'All cities in California: ' + City.find_all_by_state('CA').map { |city| city.name }.join(', ')
      
    end
    show_use_cases
end  
end