require "./lib/docking_station.rb"


# describe DockingStation do
#     it "Docking Station releases bike" do
#       expect(DockingStation.new).to respond_to(:release_bike)
#     end 
# end

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
  end


