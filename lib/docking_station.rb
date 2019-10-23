class DockingStation

 attr_accessor :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    raise "no bikes available" if @docked_bikes.empty?
    @docked_bikes.pop
  end

  def dock(bike)
    raise "Docking station full" if @docked_bikes.length >= 20
    @docked_bikes << bike
  end

  def show_docked_bikes
    @docked_bikes
  end

end

class Bike

  def working?
    true
  end

end
