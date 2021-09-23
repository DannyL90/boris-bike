
class DockingStation
    attr_reader :bike
    def initialize(bike = Bike.new)
        @bikes_in = []
        @bike = bike
        @capacity = 10
    end

    def release_bike(bike)
        @bikes_in == [] ? (raise "Can not take bike, dock is empty") : (@bikes_in.delete(bike))
    end

    def docking_bike(bike)
       @bikes_in.count == @capacity ? (raise "Can not store bike, dock is full") : (@bikes_in.push(bike))
    end

    def show_bikes
        @bikes_in
    end


end
