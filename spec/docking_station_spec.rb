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

    it "dock station full" do
      dockingstation = DockingStation.new
      bike = Bike.new
      10.times {dockingstation.docking_bike(bike)}
      expect{dockingstation.docking_bike(bike)}.to raise_error("Can not store bike, dock is full")
    end
end