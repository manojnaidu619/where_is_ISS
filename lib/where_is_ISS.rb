require "where_is_ISS/version"
require 'net/http'
require 'json'
require 'open-uri'

class Iss

  def self.track
    @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read]             # parsing the satellite data to JSON format
    @lat =  @data['latitude']                                                              # getting latitude from parsed response
    @long =  @data['longitude']                                                            # getting longtitude from parsed response
    response = Net::HTTP.get_response(URI.parse("https://api.wheretheiss.at/v1/coordinates/#{@lat},#{@long}"))   # Checking for 200 OK response from Server
     if (response.code).to_i == 200
       @iss = JSON[open("https://api.wheretheiss.at/v1/coordinates/#{@lat},#{@long}").read]                       # Print out data if status = 200 OK
       p @iss['timezone_id']   # put out the location
     else
       p ["Currently ISS is over Water bodies(Coordinates works only on land)"]
     end

    def self.coordinates
      p @coord = [@lat, @long]   # return array of lat, long
    end

    def self.info                            # all the information is being retrieved from @data variable in track function
      p  @info = [@data['name'],@data['id'],@data['latitude'],@data['longitude'],@data['altitude'],@data['velocity'],
                  @data['visibility'],@data['timestamp'],@data['solar_lat'],@data['solar_lon'],@data['units']]
      # return array of information
    end
   end

    def self.members
      @data_1 = JSON[open('http://api.open-notify.org/astros.json').read]
      @members = []
      puts "#{@data_1['number']} people on ISS"
       @data_1['people'].each do |d|
           @members << d['name']
       end
       p @members                                   # return array of members
    end

 end

=begin
  -->  Net::HTTP.get_response(URI.parse("ENTER URI"))     is used to get rid of error-prone responses
  -->  more about NET::HTTP  -->  https://stackoverflow.com/questions/18634684/how-can-i-handle-503-errors-with-open-uri
=end
