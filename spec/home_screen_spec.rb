describe HomeScreen do
  tests HomeScreen

  def controller
    @controller ||= HomeScreen.new
  end
  alias :screen :controller

  it "is a table screen" do
    screen.should.be.kind_of(PM::TableScreen)
  end

  it "loads movies" do
    screen.on_load
    wait 2 do
      screen.table_data.first[:cells].length.should.be > 0
    end
  end
end
