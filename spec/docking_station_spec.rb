require "./lib/docking_station.rb"



describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to :docking_bike}
    it { is_expected.to respond_to :show_bikes}
    
    it "dock station empty" do
      dockingstation = DockingStation.new
      bike = Bike.new
      expect{dockingstation.release_bike(bike)}.to raise_error("Can not take bike, dock is empty")
    end
end