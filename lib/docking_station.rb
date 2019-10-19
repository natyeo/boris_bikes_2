class DockingStation

 attr_accessor :docked_bikes

  def release_bike
    raise "no bikes available" unless @docked_bikes
    @docked_bikes
  end

  def dock(bike)
    raise "Docking station full" if @docked_bikes
    @docked_bikes = bike
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
