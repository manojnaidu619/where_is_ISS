
RSpec.describe WhereIsISS do

    it "has a version number" do
      expect(WhereIsISS::VERSION).not_to be nil
    end

    it "checks for class" do
      expect(Iss).to be_a_kind_of Class
    end

      it "Checks for data type of latitude and longitude" do
          @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read]
          expect(@data['latitude']).to be_a(Float)
          expect(@data['longitude']).to be_a(Float)
      end

      it "checks for net/http response code to be either 200 or 404" do
        response = Net::HTTP.get_response(URI.parse("https://api.wheretheiss.at/v1/satellites/25544"))
           expect((response.code).to_i).to be_a(Integer)
           expect((response.code).to_i).to equal 200 or expect((response.code).to_i).to equal 404
           @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read] if (response.code).to_i == 200
           expect(@data).not_to be_empty
      end

      it "checks for Location of ISS if response is 200 OK" do
          @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read]
          response = Net::HTTP.get_response(URI.parse("https://api.wheretheiss.at/v1/coordinates/#{@lat},#{@long}"))
          @iss = JSON[open("https://api.wheretheiss.at/v1/coordinates/#{@lat},#{@long}").read] if (response.code).to_i == 200
          expect(@data).not_to be nil
          expect(@iss['timezone_id']).not_to be_empty if (response.code).to_i == 200
       end

    context "Response data type check" do

        it "checks for non-empty response" do
          @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read]
          expect(@data).not_to be nil
          expect(@data['name']).to be_a(String)
          expect(@data['id']).to be_a(Integer)
          expect(@data['altitude']).to be_a(Float)
          expect(@data['velocity']).to be_a(Float)
          expect(@data['visibility']).to be_a(String)
          expect(@data['timestamp']).to be_a(Integer)
          expect(@data['solar_lat']).to be_a(Float)
          expect(@data['solar_lon']).to be_a(Float)
          expect(@data['units']).to be_a(String)
        end

    end

      it "validates response and response type" do
          @validate = Net::HTTP.get_response(URI.parse('http://api.open-notify.org/astros.json'))
          @resp = @validate.code.to_i
          expect(@resp).to equal 200
          @response = JSON[open('http://api.open-notify.org/astros.json').read] if @resp == 200
          expect(@response).not_to be_empty if @resp == 200
          expect(@response['number']).to be_a(Fixnum)
           @response['people'].each do |resp|
              expect(resp['name']).to be_a(String)
           end
       end


end
