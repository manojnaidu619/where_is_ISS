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
       iss = JSON[open("https://api.wheretheiss.at/v1/coordinates/#{@lat},#{@long}").read]                       # Print out data if status = 200 OK
       puts("International Space Station is over #{iss['timezone_id']}")
     else
       puts("Currently ISS is over Water bodies(Coordinates works only on land)")
     end

    def self.coordinates?
      puts "ISS current Latitude : #{@lat}"
      puts "ISS current Longtitude : #{@long}"
    end

    def self.info?                            # all the information is being retrieved from @data variable in track function
      puts "name : #{@data['name']}"
      puts "id : #{@data['id']}"
      puts "latitude : #{@data['latitude']}"
      puts "longtitude : #{@data['longitude']}"
      puts "altitude : #{@data['altitude']}"
      puts "velocity : #{@data['velocity']}"
      puts "visibility : #{@data['visibility']}"
      puts "timestamp : #{@data['timestamp']}"
      puts "Solar Latitude : #{@data['solar_lat']}"
      puts "Solar Longtitude : #{@data['solar_lon']}"
      puts "units : #{@data['units']}"
    end
   end

    def self.people?
      data = JSON[open('http://api.open-notify.org/astros.json').read]
      puts "#{data['number']} people on ISS"
       data['people'].each do |d|
         puts d['name']
       end
    end

 end

=begin
  -->  Net::HTTP.get_response(URI.parse("ENTER URI"))     is used to get rid of error-prone responses
  -->  more about NET::HTTP  -->  https://stackoverflow.com/questions/18634684/how-can-i-handle-503-errors-with-open-uri
=end
