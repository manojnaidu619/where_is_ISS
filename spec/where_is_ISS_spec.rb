
RSpec.describe WhereIsISS do

    it "has a version number" do
      expect(WhereIsISS::VERSION).not_to be nil
    end

    it "checks for class" do
      expect(Iss).to be_a_kind_of Class
    end

    context "Response test" do
      it "Response status" do
        @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read]
        expect(@data).not_to be_empty
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
      end

      it "checks for Location of ISS if response is 200 OK" do
          response = Net::HTTP.get_response(URI.parse("https://api.wheretheiss.at/v1/satellites/25544"))
          @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read]
          @iss = JSON[open("https://api.wheretheiss.at/v1/coordinates/#{@data['latitude']},#{@data['longitude']}").read]
          expect(@data).not_to be nil
          expect(@iss['timezone_id']).not_to be_empty if (response.code).to_i == 200
      end
    end

    context "Data incomplete test" do

        it "checks for non-empty response" do
          @data = JSON[open('https://api.wheretheiss.at/v1/satellites/25544').read]
          expect(@data).not_to be nil
          expect(@data['name']).to be_a(String)
          expect(@data['id']).to be_a(Integer)
          expect(@data['altitude']).to be_a(Float)
          expect(@data['velocity']).to be_a(Float)
          expect(@data['visibility']).to be_a(String)
          expect(@data['timestamp']).to be_a(Integer)
        end

    end


end
