#!/usr/bin/env ruby

require_relative 'bootstrap_ar'

include InterfaceController
include AddressNormalizer
include LocationController

intro

# require 'geocoder'


#     def main_menu
#       print "\e[H\e[2J" 
#       puts <<-EOS
#   ___      _     _                       _____ _                  _               _ _          _   _             
#  / _ \    | |   | |                     /  ___| |                | |             | (_)        | | (_)            
# / /_\ \ __| | __| |_ __ ___  ___ ___    \ `--.| |_ __ _ _ __   __| | __ _ _ __ __| |_ ______ _| |_ _  ___  _ __  
# |  _  |/ _` |/ _` | '__/ _ \/ __/ __|    `--. \ __/ _` | '_ \ / _` |/ _` | '__/ _` | |_  / _` | __| |/ _ \| '_ \ 
# | | | | (_| | (_| | | |  __/\__ \__ \   /\__/ / || (_| | | | | (_| | (_| | | | (_| | |/ / (_| | |_| | (_) | | | |
# \_| |_/\__,_|\__,_|_|  \___||___/___/   \____/ \__\__,_|_| |_|\__,_|\__,_|_|  \__,_|_/___\__,_|\__|_|\___/|_| |_|
                                                                                                                 
                                                                                                                 
# EOS
#       puts "Welcome to my application!"
#       puts "Please select 'n' for Address Normalizaion and 'q' for Leave the program"
#       puts <<-EOS 
#       [n] Normilize Address
#       [q] Exit program

#       Enter Selection _
#       EOS

#       case gets.strip
#       when "n"
#         normalize_address
#       when "q"
#         print "\e[H\e[2J"
#         exit 
#       else 
#         puts "No option found"
#         main_menu
#       end 
#     end

    # def normalize_address
    #     puts "Enter your Address:"
    #     address = gets.chomp
    #     geocoded = Geocoder.search "#{address}" 

    #     result = geocoded[0].formatted_address

    #   # The Google result consists of:
    #   #
    #   # - An array ("Address_components") of hashes consisting of
    #   #   {"long_name" => "...", "short_name" => "...", "types" => [...]}
    #   # - A "geometry" hash, with the latitude and longitude
    #   # - A "partial_match" indicator (which we're ignoring)
    #   # - A "types" array (which we're also ignoring)

    #       geocoded[0].address_components.each do |hash|
    #       types = hash["types"]
    #       value = hash["long_name"]
    #   if types.include? "street_number"
    #        @house_number = value
    #   elsif types.include? "route"
    #       @street = value
    #   elsif types.include? "locality"
    #       @city = value
    #   elsif types.include? "administrative_area_level_1"
    #       @state_province = value
    #   elsif types.include? "postal_code"
    #       @postal_code = value
    #   elsif types.include? "country"
    #       @country = value    
    #     end  
    #   end
    #   Address.create(street: "#{@house_number} #{@street}", city: @city, state: @state_province, zip: @postal_code, country: @country)  
    #       print "\e[H\e[2J"
    #       puts "Your Addresss Standardization result:"
    #       puts result
    #       navigation    
    # end

#     def navigation 
#           puts "please press 'n' to standardize another address or press 'b' to back to main menu"
#       case gets.strip 
#       when "n"
#         normalize_address
#       when "b"
#         main_menu
#       end 
#     end   
# main_menu

