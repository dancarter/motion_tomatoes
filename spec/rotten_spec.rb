describe Rotten do
  before do
    @rotten = Rotten.new
  end

  it "is the right type" do
    @rotten.should.be.kind_of(Rotten)
  end

  it "can get a response from RottenTomatoes" do
    @rotten.box_office do |response|
      response.should.be.kind_of(Hash)
      resume
    end
    wait {}
  end
end
