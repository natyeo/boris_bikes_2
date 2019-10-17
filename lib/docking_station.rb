class DockingStation

 attr_reader :docked_bikes

  def release_bike
    raise "no bikes available" unless @docked_bikes
    @docked_bikes
  end

  def dock(bike)
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
