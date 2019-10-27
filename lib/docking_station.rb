require './lib/bike.rb'

class DockingStation

 DEFAULT_CAPACITY = 20
 attr_accessor :docked_bikes
 attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "no bikes available" if empty?
    working_bikes = @docked_bikes.select { |bike| bike.working? }
    working_bikes.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    @docked_bikes << bike
  end

  def show_docked_bikes
    @docked_bikes
  end

  private

  def full?
    @docked_bikes.length >= @capacity
  end

  def empty?
    @docked_bikes.empty?
  end
end
