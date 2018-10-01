
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
           expect((response.code).to_i).to equal 200 or expect((response.code).to_i).to equal 404
      end
    end


end
