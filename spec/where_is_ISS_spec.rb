RSpec.describe WhereIsISS do

    it "has a version number" do
      expect(WhereIsISS::VERSION).not_to be nil
    end

    it "checks for class" do
      expect(Iss).to be_a_kind_of Class
    end

end
